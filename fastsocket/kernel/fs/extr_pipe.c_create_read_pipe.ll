; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_create_read_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_create_read_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@read_pipefifo_fops = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @create_read_pipe(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = load i32, i32* @FMODE_READ, align 4
  %10 = call %struct.file* @alloc_file(i32* %8, i32 %9, i32* @read_pipefifo_fops)
  store %struct.file* %10, %struct.file** %6, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = icmp ne %struct.file* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENFILE, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.file* @ERR_PTR(i32 %15)
  store %struct.file* %16, %struct.file** %3, align 8
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = call i32 @path_get(i32* %19)
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @O_NONBLOCK, align 4
  %24 = and i32 %22, %23
  %25 = or i32 %21, %24
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %28, %struct.file** %3, align 8
  br label %29

29:                                               ; preds = %17, %13
  %30 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %30
}

declare dso_local %struct.file* @alloc_file(i32*, i32, i32*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @path_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
