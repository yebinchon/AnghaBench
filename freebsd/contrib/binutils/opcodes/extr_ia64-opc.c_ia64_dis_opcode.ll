; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_ia64_dis_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_ia64_dis_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.ia64_opcode = type { i32 }

@ia64_dis_names = common dso_local global %struct.TYPE_5__* null, align 8
@ia64_dis_opcode.name = internal global [128 x i8] zeroinitializer, align 16
@main_table = common dso_local global %struct.TYPE_4__* null, align 8
@ia64_strings = common dso_local global i8** null, align 8
@completer_table = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ia64_opcode* @ia64_dis_opcode(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.ia64_opcode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @locate_opcode_ent(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.ia64_opcode* null, %struct.ia64_opcode** %3, align 8
  br label %136

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ia64_dis_names, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ia64_dis_names, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main_table, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main_table, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i8**, i8*** @ia64_strings, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main_table, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %43, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @ia64_dis_opcode.name, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %110, %18
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %56
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completer_table, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @apply_completer(i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i8**, i8*** @ia64_strings, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %60
  %80 = call i32 @strcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @ia64_dis_opcode.name, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %81 = load i8**, i8*** @ia64_strings, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @ia64_dis_opcode.name, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %79, %60
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completer_table, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %90, %87
  br label %105

98:                                               ; preds = %56
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completer_table, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %98, %97
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (...) @abort() #3
  unreachable

110:                                              ; preds = %105
  %111 = load i32, i32* %7, align 4
  %112 = lshr i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %53

113:                                              ; preds = %53
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @main_table, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %115, %121
  %123 = icmp ne i32 %114, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = call i32 (...) @abort() #3
  unreachable

126:                                              ; preds = %113
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @completer_table, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.ia64_opcode* @make_ia64_opcode(i32 %127, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @ia64_dis_opcode.name, i64 0, i64 0), i32 %128, i32 %134)
  store %struct.ia64_opcode* %135, %struct.ia64_opcode** %3, align 8
  br label %136

136:                                              ; preds = %126, %17
  %137 = load %struct.ia64_opcode*, %struct.ia64_opcode** %3, align 8
  ret %struct.ia64_opcode* %137
}

declare dso_local i32 @locate_opcode_ent(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @apply_completer(i32, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.ia64_opcode* @make_ia64_opcode(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
