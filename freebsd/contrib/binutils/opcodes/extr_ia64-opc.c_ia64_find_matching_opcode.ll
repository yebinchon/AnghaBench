; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_ia64_find_matching_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_ia64_find_matching_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ia64_opcode = type { i32 }

@main_table = common dso_local global %struct.TYPE_3__* null, align 8
@completer_table = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ia64_opcode* (i8*, i16)* @ia64_find_matching_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ia64_opcode* @ia64_find_matching_opcode(i8* %0, i16 signext %1) #0 {
  %3 = alloca %struct.ia64_opcode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca [129 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = icmp sgt i32 %14, 128
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.ia64_opcode* null, %struct.ia64_opcode** %3, align 8
  br label %121

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %7, align 8
  %19 = getelementptr inbounds [129 x i8], [129 x i8]* %6, i64 0, i64 0
  %20 = call i32 @get_opc_prefix(i8** %7, i8* %19)
  %21 = getelementptr inbounds [129 x i8], [129 x i8]* %6, i64 0, i64 0
  %22 = call signext i16 @find_string_ent(i8* %21)
  store i16 %22, i16* %8, align 2
  %23 = load i16, i16* %8, align 2
  %24 = sext i16 %23 to i32
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store %struct.ia64_opcode* null, %struct.ia64_opcode** %3, align 8
  br label %121

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %119, %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @main_table, align 8
  %30 = load i16, i16* %5, align 2
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 4
  %35 = sext i16 %34 to i32
  %36 = load i16, i16* %8, align 2
  %37 = sext i16 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %120

39:                                               ; preds = %28
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %9, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @main_table, align 8
  %42 = load i16, i16* %5, align 2
  %43 = sext i16 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  store i16 -1, i16* %11, align 2
  br label %47

47:                                               ; preds = %84, %39
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i16, i16* %5, align 2
  %55 = load i16, i16* %11, align 2
  %56 = load i8*, i8** %7, align 8
  %57 = call signext i16 @find_completer(i16 signext %54, i16 signext %55, i8* %56)
  store i16 %57, i16* %11, align 2
  br label %65

58:                                               ; preds = %47
  %59 = getelementptr inbounds [129 x i8], [129 x i8]* %6, i64 0, i64 0
  %60 = call i32 @get_opc_prefix(i8** %9, i8* %59)
  %61 = load i16, i16* %5, align 2
  %62 = load i16, i16* %11, align 2
  %63 = getelementptr inbounds [129 x i8], [129 x i8]* %6, i64 0, i64 0
  %64 = call signext i16 @find_completer(i16 signext %61, i16 signext %62, i8* %63)
  store i16 %64, i16* %11, align 2
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i16, i16* %11, align 2
  %67 = sext i16 %66 to i32
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = load i16, i16* %11, align 2
  %72 = call i32 @apply_completer(i32 %70, i16 signext %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73
  %75 = load i16, i16* %11, align 2
  %76 = sext i16 %75 to i32
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %78, %74
  %85 = phi i1 [ false, %74 ], [ %83, %78 ]
  br i1 %85, label %47, label %86

86:                                               ; preds = %84
  %87 = load i16, i16* %11, align 2
  %88 = sext i16 %87 to i32
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %90
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completer_table, align 8
  %98 = load i16, i16* %11, align 2
  %99 = sext i16 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %96
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @completer_table, align 8
  %106 = load i16, i16* %11, align 2
  %107 = sext i16 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i8*, i8** %4, align 8
  %113 = load i16, i16* %5, align 2
  %114 = load i32, i32* %12, align 4
  %115 = call %struct.ia64_opcode* @make_ia64_opcode(i32 %111, i8* %112, i16 signext %113, i32 %114)
  store %struct.ia64_opcode* %115, %struct.ia64_opcode** %3, align 8
  br label %121

116:                                              ; preds = %96, %90, %86
  %117 = load i16, i16* %5, align 2
  %118 = add i16 %117, 1
  store i16 %118, i16* %5, align 2
  br label %119

119:                                              ; preds = %116
  br label %28

120:                                              ; preds = %28
  store %struct.ia64_opcode* null, %struct.ia64_opcode** %3, align 8
  br label %121

121:                                              ; preds = %120, %104, %26, %16
  %122 = load %struct.ia64_opcode*, %struct.ia64_opcode** %3, align 8
  ret %struct.ia64_opcode* %122
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_opc_prefix(i8**, i8*) #1

declare dso_local signext i16 @find_string_ent(i8*) #1

declare dso_local signext i16 @find_completer(i16 signext, i16 signext, i8*) #1

declare dso_local i32 @apply_completer(i32, i16 signext) #1

declare dso_local %struct.ia64_opcode* @make_ia64_opcode(i32, i8*, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
