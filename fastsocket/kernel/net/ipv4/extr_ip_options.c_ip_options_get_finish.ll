; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_options.c_ip_options_get_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_options.c_ip_options_get_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip_options = type { i32, i32* }

@IPOPT_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ip_options**, %struct.ip_options*, i32)* @ip_options_get_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_options_get_finish(%struct.net* %0, %struct.ip_options** %1, %struct.ip_options* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.ip_options**, align 8
  %8 = alloca %struct.ip_options*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.ip_options** %1, %struct.ip_options*** %7, align 8
  store %struct.ip_options* %2, %struct.ip_options** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %10

10:                                               ; preds = %14, %4
  %11 = load i32, i32* %9, align 4
  %12 = and i32 %11, 3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load i32, i32* @IPOPT_END, align 4
  %16 = load %struct.ip_options*, %struct.ip_options** %8, align 8
  %17 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 %15, i32* %22, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ip_options*, %struct.ip_options** %8, align 8
  %26 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.net*, %struct.net** %6, align 8
  %31 = load %struct.ip_options*, %struct.ip_options** %8, align 8
  %32 = call i64 @ip_options_compile(%struct.net* %30, %struct.ip_options* %31, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.ip_options*, %struct.ip_options** %8, align 8
  %36 = call i32 @kfree_ip_options(%struct.ip_options* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %29, %23
  %40 = load %struct.ip_options**, %struct.ip_options*** %7, align 8
  %41 = load %struct.ip_options*, %struct.ip_options** %40, align 8
  %42 = call i32 @kfree_ip_options(%struct.ip_options* %41)
  %43 = load %struct.ip_options*, %struct.ip_options** %8, align 8
  %44 = load %struct.ip_options**, %struct.ip_options*** %7, align 8
  store %struct.ip_options* %43, %struct.ip_options** %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %34
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @ip_options_compile(%struct.net*, %struct.ip_options*, i32*) #1

declare dso_local i32 @kfree_ip_options(%struct.ip_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
