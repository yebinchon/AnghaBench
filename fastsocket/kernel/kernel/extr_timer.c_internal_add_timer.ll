; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_internal_add_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_timer.c_internal_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tvec_base = type { i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.TYPE_9__ = type { %struct.list_head* }
%struct.TYPE_8__ = type { %struct.list_head* }
%struct.TYPE_7__ = type { %struct.list_head* }
%struct.TYPE_6__ = type { %struct.list_head* }
%struct.timer_list = type { i64, i32 }

@TVR_SIZE = common dso_local global i64 0, align 8
@TVR_MASK = common dso_local global i64 0, align 8
@TVR_BITS = common dso_local global i32 0, align 4
@TVN_BITS = common dso_local global i32 0, align 4
@TVN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tvec_base*, %struct.timer_list*)* @internal_add_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_add_timer(%struct.tvec_base* %0, %struct.timer_list* %1) #0 {
  %3 = alloca %struct.tvec_base*, align 8
  %4 = alloca %struct.timer_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tvec_base* %0, %struct.tvec_base** %3, align 8
  store %struct.timer_list* %1, %struct.timer_list** %4, align 8
  %13 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %14 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %18 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @TVR_SIZE, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @TVR_MASK, align 8
  %27 = and i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %30 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.list_head, %struct.list_head* %32, i64 %34
  store %struct.list_head* %35, %struct.list_head** %7, align 8
  br label %157

36:                                               ; preds = %2
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @TVR_BITS, align 4
  %39 = load i32, i32* @TVN_BITS, align 4
  %40 = add nsw i32 %38, %39
  %41 = shl i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %37, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @TVR_BITS, align 4
  %47 = zext i32 %46 to i64
  %48 = lshr i64 %45, %47
  %49 = load i64, i64* @TVN_MASK, align 8
  %50 = and i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %53 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.list_head*, %struct.list_head** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.list_head, %struct.list_head* %55, i64 %57
  store %struct.list_head* %58, %struct.list_head** %7, align 8
  br label %156

59:                                               ; preds = %36
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @TVR_BITS, align 4
  %62 = load i32, i32* @TVN_BITS, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %61, %63
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = icmp ult i64 %60, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %59
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* @TVR_BITS, align 4
  %71 = load i32, i32* @TVN_BITS, align 4
  %72 = add nsw i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = lshr i64 %69, %73
  %75 = load i64, i64* @TVN_MASK, align 8
  %76 = and i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %10, align 4
  %78 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %79 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.list_head*, %struct.list_head** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.list_head, %struct.list_head* %81, i64 %83
  store %struct.list_head* %84, %struct.list_head** %7, align 8
  br label %155

85:                                               ; preds = %59
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* @TVR_BITS, align 4
  %88 = load i32, i32* @TVN_BITS, align 4
  %89 = mul nsw i32 3, %88
  %90 = add nsw i32 %87, %89
  %91 = shl i32 1, %90
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %86, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %85
  %95 = load i64, i64* %5, align 8
  %96 = load i32, i32* @TVR_BITS, align 4
  %97 = load i32, i32* @TVN_BITS, align 4
  %98 = mul nsw i32 2, %97
  %99 = add nsw i32 %96, %98
  %100 = zext i32 %99 to i64
  %101 = lshr i64 %95, %100
  %102 = load i64, i64* @TVN_MASK, align 8
  %103 = and i64 %101, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %106 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.list_head*, %struct.list_head** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.list_head, %struct.list_head* %108, i64 %110
  store %struct.list_head* %111, %struct.list_head** %7, align 8
  br label %154

112:                                              ; preds = %85
  %113 = load i64, i64* %6, align 8
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %117 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load %struct.list_head*, %struct.list_head** %118, align 8
  %120 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %121 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TVR_MASK, align 8
  %124 = and i64 %122, %123
  %125 = getelementptr inbounds %struct.list_head, %struct.list_head* %119, i64 %124
  store %struct.list_head* %125, %struct.list_head** %7, align 8
  br label %153

126:                                              ; preds = %112
  %127 = load i64, i64* %6, align 8
  %128 = icmp ugt i64 %127, 4294967295
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  store i64 4294967295, i64* %6, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %132 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %130, %133
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %129, %126
  %136 = load i64, i64* %5, align 8
  %137 = load i32, i32* @TVR_BITS, align 4
  %138 = load i32, i32* @TVN_BITS, align 4
  %139 = mul nsw i32 3, %138
  %140 = add nsw i32 %137, %139
  %141 = zext i32 %140 to i64
  %142 = lshr i64 %136, %141
  %143 = load i64, i64* @TVN_MASK, align 8
  %144 = and i64 %142, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %12, align 4
  %146 = load %struct.tvec_base*, %struct.tvec_base** %3, align 8
  %147 = getelementptr inbounds %struct.tvec_base, %struct.tvec_base* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load %struct.list_head*, %struct.list_head** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.list_head, %struct.list_head* %149, i64 %151
  store %struct.list_head* %152, %struct.list_head** %7, align 8
  br label %153

153:                                              ; preds = %135, %115
  br label %154

154:                                              ; preds = %153, %94
  br label %155

155:                                              ; preds = %154, %68
  br label %156

156:                                              ; preds = %155, %44
  br label %157

157:                                              ; preds = %156, %24
  %158 = load %struct.timer_list*, %struct.timer_list** %4, align 8
  %159 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %158, i32 0, i32 1
  %160 = load %struct.list_head*, %struct.list_head** %7, align 8
  %161 = call i32 @list_add_tail(i32* %159, %struct.list_head* %160)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
