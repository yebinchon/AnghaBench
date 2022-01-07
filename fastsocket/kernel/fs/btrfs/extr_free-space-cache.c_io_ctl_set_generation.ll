; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_set_generation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_set_generation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ctl = type { i32, i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_ctl*, i32)* @io_ctl_set_generation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_ctl_set_generation(%struct.io_ctl* %0, i32 %1) #0 {
  %3 = alloca %struct.io_ctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.io_ctl* %0, %struct.io_ctl** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %7 = call i32 @io_ctl_map_page(%struct.io_ctl* %6, i32 1)
  %8 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %9 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %14 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %19 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 %17
  store i32* %21, i32** %19, align 8
  %22 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %23 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = add i64 4, %26
  %28 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %29 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  br label %45

34:                                               ; preds = %2
  %35 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %36 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32* %38, i32** %36, align 8
  %39 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %40 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  br label %45

45:                                               ; preds = %34, %12
  %46 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %47 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @cpu_to_le64(i32 %49)
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.io_ctl*, %struct.io_ctl** %3, align 8
  %53 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32* %55, i32** %53, align 8
  ret void
}

declare dso_local i32 @io_ctl_map_page(%struct.io_ctl*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
