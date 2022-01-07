; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c___rtnl_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c___rtnl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_link = type { i64, i64, i64 }

@RTNL_FAMILY_MAX = common dso_local global i32 0, align 4
@rtnl_msg_handlers = common dso_local global %struct.rtnl_link** null, align 8
@RTM_NR_MSGTYPES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rtnl_register(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtnl_link*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @RTNL_FAMILY_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %5
  %21 = phi i1 [ true, %5 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @rtm_msgindex(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.rtnl_link**, %struct.rtnl_link*** @rtnl_msg_handlers, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rtnl_link*, %struct.rtnl_link** %26, i64 %28
  %30 = load %struct.rtnl_link*, %struct.rtnl_link** %29, align 8
  store %struct.rtnl_link* %30, %struct.rtnl_link** %12, align 8
  %31 = load %struct.rtnl_link*, %struct.rtnl_link** %12, align 8
  %32 = icmp eq %struct.rtnl_link* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %20
  %34 = load i32, i32* @RTM_NR_MSGTYPES, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.rtnl_link* @kcalloc(i32 %34, i32 24, i32 %35)
  store %struct.rtnl_link* %36, %struct.rtnl_link** %12, align 8
  %37 = load %struct.rtnl_link*, %struct.rtnl_link** %12, align 8
  %38 = icmp eq %struct.rtnl_link* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOBUFS, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %79

42:                                               ; preds = %33
  %43 = load %struct.rtnl_link*, %struct.rtnl_link** %12, align 8
  %44 = load %struct.rtnl_link**, %struct.rtnl_link*** @rtnl_msg_handlers, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.rtnl_link*, %struct.rtnl_link** %44, i64 %46
  store %struct.rtnl_link* %43, %struct.rtnl_link** %47, align 8
  br label %48

48:                                               ; preds = %42, %20
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.rtnl_link*, %struct.rtnl_link** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %53, i64 %55
  %57 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %56, i32 0, i32 2
  store i64 %52, i64* %57, align 8
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.rtnl_link*, %struct.rtnl_link** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %63, i64 %65
  %67 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %66, i32 0, i32 1
  store i64 %62, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %58
  %69 = load i64, i64* %11, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.rtnl_link*, %struct.rtnl_link** %12, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %73, i64 %75
  %77 = getelementptr inbounds %struct.rtnl_link, %struct.rtnl_link* %76, i32 0, i32 0
  store i64 %72, i64* %77, align 8
  br label %78

78:                                               ; preds = %71, %68
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %39
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rtm_msgindex(i32) #1

declare dso_local %struct.rtnl_link* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
