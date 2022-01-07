; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_sjlj_output_call_site_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_sjlj_output_call_site_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.call_site_record* }
%struct.call_site_record = type { i32, i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"region %d landing pad\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@call_site_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sjlj_output_call_site_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sjlj_output_call_site_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.call_site_record*, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %32, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.call_site_record*, %struct.call_site_record** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %18, i64 %20
  store %struct.call_site_record* %21, %struct.call_site_record** %3, align 8
  %22 = load %struct.call_site_record*, %struct.call_site_record** %3, align 8
  %23 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @INTVAL(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 (i32, i8*, ...) @dw2_asm_output_data_uleb128(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.call_site_record*, %struct.call_site_record** %3, align 8
  %29 = getelementptr inbounds %struct.call_site_record, %struct.call_site_record* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @dw2_asm_output_data_uleb128(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %9

35:                                               ; preds = %9
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @call_site_base, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* @call_site_base, align 4
  ret void
}

declare dso_local i32 @dw2_asm_output_data_uleb128(i32, i8*, ...) #1

declare dso_local i32 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
