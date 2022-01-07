; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_gen_crc32table.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_gen_crc32table.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"/* this file is generated - do not edit */\0A\0A\00", align 1
@CRC_LE_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"static const u32 crc32table_le[] = {\00", align 1
@crc32table_le = common dso_local global i32 0, align 4
@LE_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"tole\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@CRC_BE_BITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"static const u32 crc32table_be[] = {\00", align 1
@crc32table_be = common dso_local global i32 0, align 4
@BE_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"tobe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @CRC_LE_BITS, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = call i32 (...) @crc32init_le()
  %11 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @crc32table_le, align 4
  %13 = load i32, i32* @LE_TABLE_SIZE, align 4
  %14 = call i32 @output_table(i32 %12, i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* @CRC_BE_BITS, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = call i32 (...) @crc32init_be()
  %21 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32, i32* @crc32table_be, align 4
  %23 = load i32, i32* @BE_TABLE_SIZE, align 4
  %24 = call i32 @output_table(i32 %22, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %19, %16
  ret i32 0
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @crc32init_le(...) #1

declare dso_local i32 @output_table(i32, i32, i8*) #1

declare dso_local i32 @crc32init_be(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
