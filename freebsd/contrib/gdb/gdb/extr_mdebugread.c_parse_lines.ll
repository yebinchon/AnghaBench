; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_parse_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_parse_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }
%struct.linetable = type { i32 }
%struct.partial_symtab = type { i32 }

@ilineNil = common dso_local global i64 0, align 8
@debug_info = common dso_local global %struct.TYPE_9__* null, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"guessed size of linetable for %s incorrectly\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.linetable*, i32, %struct.partial_symtab*, i32)* @parse_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_lines(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, %struct.linetable* %2, i32 %3, %struct.partial_symtab* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.linetable*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.partial_symtab*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.linetable* %2, %struct.linetable** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.partial_symtab* %4, %struct.partial_symtab** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %171

27:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %166, %27
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %171

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ilineNil, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %40, %34
  br label %166

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @debug_info, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8* %59, i8** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = icmp ne i32 %60, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %51
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %67, i64 %72
  store i8* %73, i8** %21, align 8
  br label %80

74:                                               ; preds = %51
  %75 = load i8*, i8** %13, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  store i8* %79, i8** %21, align 8
  br label %80

80:                                               ; preds = %74, %66
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %13, align 8
  %87 = load %struct.partial_symtab*, %struct.partial_symtab** %11, align 8
  %88 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* %20, align 4
  %97 = ashr i32 %96, 2
  store i32 %97, i32* %19, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %155, %80
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %21, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %165

105:                                              ; preds = %101
  %106 = load i8*, i8** %13, align 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 15
  store i32 %109, i32* %17, align 4
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %13, align 8
  %112 = load i8, i8* %110, align 1
  %113 = zext i8 %112 to i32
  %114 = ashr i32 %113, 4
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp sge i32 %115, 8
  br i1 %116, label %117, label %120

117:                                              ; preds = %105
  %118 = load i32, i32* %16, align 4
  %119 = sub nsw i32 %118, 16
  store i32 %119, i32* %16, align 4
  br label %120

120:                                              ; preds = %117, %105
  %121 = load i32, i32* %16, align 4
  %122 = icmp eq i32 %121, -8
  br i1 %122, label %123, label %142

123:                                              ; preds = %120
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = shl i32 %127, 8
  %129 = load i8*, i8** %13, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %128, %132
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp sge i32 %134, 32768
  br i1 %135, label %136, label %139

136:                                              ; preds = %123
  %137 = load i32, i32* %16, align 4
  %138 = sub nsw i32 %137, 65536
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %136, %123
  %140 = load i8*, i8** %13, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  store i8* %141, i8** %13, align 8
  br label %142

142:                                              ; preds = %139, %120
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %18, align 4
  %146 = load %struct.linetable*, %struct.linetable** %9, align 8
  %147 = getelementptr inbounds %struct.linetable, %struct.linetable* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %153 = call i32 @fdr_name(%struct.TYPE_8__* %152)
  %154 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %153)
  br label %165

155:                                              ; preds = %142
  %156 = load %struct.linetable*, %struct.linetable** %9, align 8
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @add_line(%struct.linetable* %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %19, align 4
  br label %101

165:                                              ; preds = %151, %101
  br label %166

166:                                              ; preds = %165, %50
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 1
  store %struct.TYPE_7__* %170, %struct.TYPE_7__** %8, align 8
  br label %28

171:                                              ; preds = %26, %28
  ret void
}

declare dso_local i32 @complaint(i32*, i8*, i32) #1

declare dso_local i32 @fdr_name(%struct.TYPE_8__*) #1

declare dso_local i32 @add_line(%struct.linetable*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
