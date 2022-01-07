; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dump_die.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dump_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32, %struct.TYPE_6__*, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Die: %s (abbrev = %d, offset = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\09has children: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\09attributes:\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\09\09%s (%s) \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"address: \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"block: size %d\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"constant: %ld\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"string: \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"flag: TRUE\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"flag: FALSE\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"unexpected attribute form: DW_FORM_indirect\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"unsupported attribute form: %d.\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*)* @dump_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_die(%struct.die_info* %0) #0 {
  %2 = alloca %struct.die_info*, align 8
  %3 = alloca i32, align 4
  store %struct.die_info* %0, %struct.die_info** %2, align 8
  %4 = load i32, i32* @gdb_stderr, align 4
  %5 = load %struct.die_info*, %struct.die_info** %2, align 8
  %6 = getelementptr inbounds %struct.die_info, %struct.die_info* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @dwarf_tag_name(i32 %7)
  %9 = load %struct.die_info*, %struct.die_info** %2, align 8
  %10 = getelementptr inbounds %struct.die_info, %struct.die_info* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.die_info*, %struct.die_info** %2, align 8
  %13 = getelementptr inbounds %struct.die_info, %struct.die_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14)
  %16 = load i32, i32* @gdb_stderr, align 4
  %17 = load %struct.die_info*, %struct.die_info** %2, align 8
  %18 = getelementptr inbounds %struct.die_info, %struct.die_info* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @dwarf_bool_name(i32 %21)
  %23 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @gdb_stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %153, %1
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.die_info*, %struct.die_info** %2, align 8
  %29 = getelementptr inbounds %struct.die_info, %struct.die_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %156

32:                                               ; preds = %26
  %33 = load i32, i32* @gdb_stderr, align 4
  %34 = load %struct.die_info*, %struct.die_info** %2, align 8
  %35 = getelementptr inbounds %struct.die_info, %struct.die_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dwarf_attr_name(i32 %41)
  %43 = load %struct.die_info*, %struct.die_info** %2, align 8
  %44 = getelementptr inbounds %struct.die_info, %struct.die_info* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dwarf_form_name(i32 %50)
  %52 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %51)
  %53 = load %struct.die_info*, %struct.die_info** %2, align 8
  %54 = getelementptr inbounds %struct.die_info, %struct.die_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %139 [
    i32 132, label %61
    i32 147, label %61
    i32 144, label %73
    i32 143, label %73
    i32 146, label %73
    i32 145, label %73
    i32 142, label %85
    i32 141, label %85
    i32 140, label %85
    i32 139, label %85
    i32 135, label %85
    i32 134, label %85
    i32 133, label %85
    i32 128, label %85
    i32 131, label %85
    i32 130, label %95
    i32 129, label %95
    i32 138, label %117
    i32 137, label %133
    i32 136, label %136
  ]

61:                                               ; preds = %32, %32
  %62 = load i32, i32* @gdb_stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.die_info*, %struct.die_info** %2, align 8
  %65 = getelementptr inbounds %struct.die_info, %struct.die_info* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = call i32 @DW_ADDR(%struct.TYPE_6__* %69)
  %71 = load i32, i32* @gdb_stderr, align 4
  %72 = call i32 @print_address_numeric(i32 %70, i32 1, i32 %71)
  br label %150

73:                                               ; preds = %32, %32, %32, %32
  %74 = load i32, i32* @gdb_stderr, align 4
  %75 = load %struct.die_info*, %struct.die_info** %2, align 8
  %76 = getelementptr inbounds %struct.die_info, %struct.die_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = call %struct.TYPE_7__* @DW_BLOCK(%struct.TYPE_6__* %80)
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  br label %150

85:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32
  %86 = load i32, i32* @gdb_stderr, align 4
  %87 = load %struct.die_info*, %struct.die_info** %2, align 8
  %88 = getelementptr inbounds %struct.die_info, %struct.die_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = call i32 @DW_UNSND(%struct.TYPE_6__* %92)
  %94 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  br label %150

95:                                               ; preds = %32, %32
  %96 = load i32, i32* @gdb_stderr, align 4
  %97 = load %struct.die_info*, %struct.die_info** %2, align 8
  %98 = getelementptr inbounds %struct.die_info, %struct.die_info* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = call i8* @DW_STRING(%struct.TYPE_6__* %102)
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %95
  %106 = load %struct.die_info*, %struct.die_info** %2, align 8
  %107 = getelementptr inbounds %struct.die_info, %struct.die_info* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = call i8* @DW_STRING(%struct.TYPE_6__* %111)
  br label %114

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113, %105
  %115 = phi i8* [ %112, %105 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %113 ]
  %116 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %115)
  br label %150

117:                                              ; preds = %32
  %118 = load %struct.die_info*, %struct.die_info** %2, align 8
  %119 = getelementptr inbounds %struct.die_info, %struct.die_info* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = call i32 @DW_UNSND(%struct.TYPE_6__* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load i32, i32* @gdb_stderr, align 4
  %128 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %132

129:                                              ; preds = %117
  %130 = load i32, i32* @gdb_stderr, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %126
  br label %150

133:                                              ; preds = %32
  %134 = load i32, i32* @gdb_stderr, align 4
  %135 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %150

136:                                              ; preds = %32
  %137 = load i32, i32* @gdb_stderr, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %150

139:                                              ; preds = %32
  %140 = load i32, i32* @gdb_stderr, align 4
  %141 = load %struct.die_info*, %struct.die_info** %2, align 8
  %142 = getelementptr inbounds %struct.die_info, %struct.die_info* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %139, %136, %133, %132, %114, %85, %73, %61
  %151 = load i32, i32* @gdb_stderr, align 4
  %152 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %151, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %3, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %3, align 4
  br label %26

156:                                              ; preds = %26
  ret void
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @dwarf_tag_name(i32) #1

declare dso_local i32 @dwarf_bool_name(i32) #1

declare dso_local i32 @dwarf_attr_name(i32) #1

declare dso_local i32 @dwarf_form_name(i32) #1

declare dso_local i32 @print_address_numeric(i32, i32, i32) #1

declare dso_local i32 @DW_ADDR(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_7__* @DW_BLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @DW_UNSND(%struct.TYPE_6__*) #1

declare dso_local i8* @DW_STRING(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
