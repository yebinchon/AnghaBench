; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_config_eql.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_config.c_pohmelfs_config_eql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_ctl = type { i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pohmelfs_ctl*, %struct.pohmelfs_ctl*)* @pohmelfs_config_eql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_config_eql(%struct.pohmelfs_ctl* %0, %struct.pohmelfs_ctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pohmelfs_ctl*, align 8
  %5 = alloca %struct.pohmelfs_ctl*, align 8
  store %struct.pohmelfs_ctl* %0, %struct.pohmelfs_ctl** %4, align 8
  store %struct.pohmelfs_ctl* %1, %struct.pohmelfs_ctl** %5, align 8
  %6 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %4, align 8
  %7 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %5, align 8
  %10 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %4, align 8
  %15 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %5, align 8
  %18 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %13
  %22 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %4, align 8
  %23 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %5, align 8
  %26 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %21
  %30 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %4, align 8
  %31 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %5, align 8
  %34 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %4, align 8
  %39 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %38, i32 0, i32 4
  %40 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %5, align 8
  %41 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %40, i32 0, i32 4
  %42 = load %struct.pohmelfs_ctl*, %struct.pohmelfs_ctl** %5, align 8
  %43 = getelementptr inbounds %struct.pohmelfs_ctl, %struct.pohmelfs_ctl* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcmp(i32* %39, i32* %41, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %49

48:                                               ; preds = %37, %29, %21, %13, %2
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
