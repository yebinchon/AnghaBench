; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_options.c_dccp_insert_fn_opt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_options.c_dccp_insert_fn_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@DCCP_SINGLE_OPT_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"length %u for feature %u too large\0A\00", align 1
@DCCP_MAX_OPT_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"packet too small for feature %d option!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_insert_fn_opt(%struct.sk_buff* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* @DCCP_SINGLE_OPT_MAXLEN, align 4
  %18 = sub nsw i32 %17, 2
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 (i8*, i32, ...) @DCCP_WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  store i32 -1, i32* %7, align 4
  br label %89

24:                                               ; preds = %6
  %25 = load i32*, i32** %11, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ true, %24 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 3, %37
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load i64, i64* @DCCP_MAX_OPT_LEN, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i8*, i32, ...) @DCCP_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 -1, i32* %7, align 4
  br label %89

53:                                               ; preds = %36
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %55
  store i64 %60, i64* %58, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32* @skb_push(%struct.sk_buff* %61, i32 %62)
  store i32* %63, i32** %15, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %15, align 8
  store i32 %64, i32* %65, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %15, align 8
  store i32 %67, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %15, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %53
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %15, align 8
  store i32 %77, i32* %78, align 4
  br label %80

80:                                               ; preds = %75, %53
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32*, i32** %15, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @memcpy(i32* %84, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %80
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %88, %50, %20
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @DCCP_WARN(i8*, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
