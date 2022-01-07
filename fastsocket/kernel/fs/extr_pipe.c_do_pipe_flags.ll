; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_do_pipe_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_do_pipe_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_pipe_flags(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @O_CLOEXEC, align 4
  %13 = load i32, i32* @O_NONBLOCK, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %11, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.file* @create_write_pipe(i32 %22)
  store %struct.file* %23, %struct.file** %6, align 8
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = call i64 @IS_ERR(%struct.file* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.file*, %struct.file** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.file* %28)
  store i32 %29, i32* %3, align 4
  br label %83

30:                                               ; preds = %21
  %31 = load %struct.file*, %struct.file** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.file* @create_read_pipe(%struct.file* %31, i32 %32)
  store %struct.file* %33, %struct.file** %7, align 8
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = call i32 @PTR_ERR(%struct.file* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = call i64 @IS_ERR(%struct.file* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %79

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @get_unused_fd_flags(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %73

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @get_unused_fd_flags(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %70

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @audit_fd_pair(i32 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.file*, %struct.file** %7, align 8
  %60 = call i32 @fd_install(i32 %58, %struct.file* %59)
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.file*, %struct.file** %6, align 8
  %63 = call i32 @fd_install(i32 %61, %struct.file* %62)
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %83

70:                                               ; preds = %52
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @put_unused_fd(i32 %71)
  br label %73

73:                                               ; preds = %70, %45
  %74 = load %struct.file*, %struct.file** %7, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = call i32 @path_put(i32* %75)
  %77 = load %struct.file*, %struct.file** %7, align 8
  %78 = call i32 @put_filp(%struct.file* %77)
  br label %79

79:                                               ; preds = %73, %39
  %80 = load %struct.file*, %struct.file** %6, align 8
  %81 = call i32 @free_write_pipe(%struct.file* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %53, %27, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.file* @create_write_pipe(i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local %struct.file* @create_read_pipe(%struct.file*, i32) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local i32 @audit_fd_pair(i32, i32) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @path_put(i32*) #1

declare dso_local i32 @put_filp(%struct.file*) #1

declare dso_local i32 @free_write_pipe(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
