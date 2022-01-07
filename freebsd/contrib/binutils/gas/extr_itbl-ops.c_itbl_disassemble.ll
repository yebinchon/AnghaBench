; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_disassemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_itbl-ops.c_itbl_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itbl_entry = type { i8*, i32, %struct.itbl_field* }
%struct.itbl_field = type { i32, i32, %struct.itbl_field* }

@e_insn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s$%lu\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @itbl_disassemble(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.itbl_entry*, align 8
  %8 = alloca %struct.itbl_field*, align 8
  %9 = alloca %struct.itbl_entry*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @ITBL_IS_INSN(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ITBL_DECODE_PNUM(i64 %16)
  %18 = call i32 @get_processor(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @e_insn, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call %struct.itbl_entry* @find_entry_byval(i32 %19, i32 %20, i64 %21, i32* null)
  store %struct.itbl_entry* %22, %struct.itbl_entry** %7, align 8
  %23 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %24 = icmp ne %struct.itbl_entry* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %96

26:                                               ; preds = %15
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %29 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcpy(i8* %27, i8* %30)
  %32 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %33 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %32, i32 0, i32 2
  %34 = load %struct.itbl_field*, %struct.itbl_field** %33, align 8
  store %struct.itbl_field* %34, %struct.itbl_field** %8, align 8
  br label %35

35:                                               ; preds = %91, %26
  %36 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %37 = icmp ne %struct.itbl_field* %36, null
  br i1 %37, label %38, label %95

38:                                               ; preds = %35
  %39 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %40 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %41 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %40, i32 0, i32 2
  %42 = load %struct.itbl_field*, %struct.itbl_field** %41, align 8
  %43 = icmp eq %struct.itbl_field* %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcat(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %50

47:                                               ; preds = %38
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strcat(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %53 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @extract_range(i64 %51, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %57 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %89 [
    i32 130, label %59
    i32 131, label %59
    i32 129, label %59
    i32 132, label %84
    i32 128, label %84
  ]

59:                                               ; preds = %50, %50, %50
  %60 = load %struct.itbl_entry*, %struct.itbl_entry** %7, align 8
  %61 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %64 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %68 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %67, i32 0, i32 1
  %69 = call %struct.itbl_entry* @find_entry_byval(i32 %62, i32 %65, i64 %66, i32* %68)
  store %struct.itbl_entry* %69, %struct.itbl_entry** %9, align 8
  %70 = load %struct.itbl_entry*, %struct.itbl_entry** %9, align 8
  %71 = icmp ne %struct.itbl_entry* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load i8*, i8** %4, align 8
  %74 = load %struct.itbl_entry*, %struct.itbl_entry** %9, align 8
  %75 = getelementptr inbounds %struct.itbl_entry, %struct.itbl_entry* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcat(i8* %73, i8* %76)
  br label %83

78:                                               ; preds = %59
  %79 = load i8*, i8** %4, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %80, i64 %81)
  br label %83

83:                                               ; preds = %78, %72
  br label %90

84:                                               ; preds = %50, %50
  %85 = load i8*, i8** %4, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %86, i64 %87)
  br label %90

89:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %96

90:                                               ; preds = %84, %83
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.itbl_field*, %struct.itbl_field** %8, align 8
  %93 = getelementptr inbounds %struct.itbl_field, %struct.itbl_field* %92, i32 0, i32 2
  %94 = load %struct.itbl_field*, %struct.itbl_field** %93, align 8
  store %struct.itbl_field* %94, %struct.itbl_field** %8, align 8
  br label %35

95:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %89, %25, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ITBL_IS_INSN(i64) #1

declare dso_local i32 @get_processor(i32) #1

declare dso_local i32 @ITBL_DECODE_PNUM(i64) #1

declare dso_local %struct.itbl_entry* @find_entry_byval(i32, i32, i64, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @extract_range(i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
