; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_pe_skip_trampoline_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_pe_skip_trampoline_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"__imp_\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"_imp_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i386_pe_skip_trampoline_code(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.minimal_symbol*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = call i32 @read_memory_unsigned_integer(i64 %13, i32 2)
  %15 = icmp eq i32 %14, 9727
  br i1 %15, label %16, label %59

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = call i32 @read_memory_unsigned_integer(i64 %19, i32 4)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64 %25)
  br label %28

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi %struct.minimal_symbol* [ %26, %24 ], [ null, %27 ]
  store %struct.minimal_symbol* %29, %struct.minimal_symbol** %7, align 8
  %30 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %31 = icmp ne %struct.minimal_symbol* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %34 = call i8* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %33)
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i8* [ %34, %32 ], [ null, %35 ]
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44, %40
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @read_memory_unsigned_integer(i64 %53, i32 4)
  br label %55

55:                                               ; preds = %52, %51
  %56 = phi i32 [ 1, %51 ], [ %54, %52 ]
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %36
  br label %59

59:                                               ; preds = %58, %11, %2
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @read_memory_unsigned_integer(i64, i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64) #1

declare dso_local i8* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
