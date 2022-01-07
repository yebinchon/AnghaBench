; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_subr.c_lapb_send_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_subr.c_lapb_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i32 }
%struct.sk_buff = type { i32 }

@LAPB_HEADER_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@LAPB_EXTENDED = common dso_local global i32 0, align 4
@LAPB_U = common dso_local global i32 0, align 4
@LAPB_SPF = common dso_local global i8 0, align 1
@LAPB_EPF = common dso_local global i8 0, align 1
@LAPB_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_send_control(%struct.lapb_cb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lapb_cb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.lapb_cb* %0, %struct.lapb_cb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @LAPB_HEADER_LEN, align 8
  %12 = add nsw i64 %11, 3
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.sk_buff* @alloc_skb(i64 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %9, align 8
  %15 = icmp eq %struct.sk_buff* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %122

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i64, i64* @LAPB_HEADER_LEN, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @skb_reserve(%struct.sk_buff* %18, i64 %20)
  %22 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %23 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @LAPB_EXTENDED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LAPB_U, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @LAPB_U, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call i8* @skb_put(%struct.sk_buff* %35, i32 1)
  store i8* %36, i8** %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %10, align 8
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i8, i8* @LAPB_SPF, align 1
  %44 = zext i8 %43 to i32
  br label %46

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %47
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %48, align 1
  br label %81

53:                                               ; preds = %28
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = call i8* @skb_put(%struct.sk_buff* %54, i32 2)
  store i8* %55, i8** %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 %57, i8* %59, align 1
  %60 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %61 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 1
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 %64, i8* %66, align 1
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load i8, i8* @LAPB_EPF, align 1
  %71 = zext i8 %70 to i32
  br label %73

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 0, %72 ]
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %78, %74
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 1
  br label %81

81:                                               ; preds = %73, %46
  br label %117

82:                                               ; preds = %17
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call i8* @skb_put(%struct.sk_buff* %83, i32 1)
  store i8* %84, i8** %10, align 8
  %85 = load i32, i32* %6, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %10, align 8
  store i8 %86, i8* %87, align 1
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i8, i8* @LAPB_SPF, align 1
  %92 = zext i8 %91 to i32
  br label %94

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %90
  %95 = phi i32 [ %92, %90 ], [ 0, %93 ]
  %96 = load i8*, i8** %10, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %98, %95
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %96, align 1
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @LAPB_U, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @LAPB_S, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %94
  %107 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %108 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 5
  %111 = load i8*, i8** %10, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %113, %110
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %111, align 1
  br label %116

116:                                              ; preds = %106, %94
  br label %117

117:                                              ; preds = %116, %81
  %118 = load %struct.lapb_cb*, %struct.lapb_cb** %5, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @lapb_transmit_buffer(%struct.lapb_cb* %118, %struct.sk_buff* %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %16
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @lapb_transmit_buffer(%struct.lapb_cb*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
