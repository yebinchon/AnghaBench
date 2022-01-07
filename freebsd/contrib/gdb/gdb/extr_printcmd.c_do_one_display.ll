; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_do_one_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_do_one_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i64, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i8 }
%struct.value = type { i32 }

@current_display_number = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"x/\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"/%c \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*)* @do_one_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_one_display(%struct.display* %0) #0 {
  %2 = alloca %struct.display*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca { i64, i8 }, align 4
  store %struct.display* %0, %struct.display** %2, align 8
  %7 = load %struct.display*, %struct.display** %2, align 8
  %8 = getelementptr inbounds %struct.display, %struct.display* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %176

12:                                               ; preds = %1
  %13 = load %struct.display*, %struct.display** %2, align 8
  %14 = getelementptr inbounds %struct.display, %struct.display* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = call i32 @get_selected_block(i32 0)
  %19 = load %struct.display*, %struct.display** %2, align 8
  %20 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @contained_in(i32 %18, i64 %21)
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %176

28:                                               ; preds = %24
  %29 = load %struct.display*, %struct.display** %2, align 8
  %30 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* @current_display_number, align 4
  %32 = call i32 (...) @annotate_display_begin()
  %33 = load %struct.display*, %struct.display** %2, align 8
  %34 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 (...) @annotate_display_number_end()
  %38 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.display*, %struct.display** %2, align 8
  %40 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %132

44:                                               ; preds = %28
  %45 = call i32 (...) @annotate_display_format()
  %46 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.display*, %struct.display** %2, align 8
  %48 = getelementptr inbounds %struct.display, %struct.display* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.display*, %struct.display** %2, align 8
  %54 = getelementptr inbounds %struct.display, %struct.display* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %44
  %59 = load %struct.display*, %struct.display** %2, align 8
  %60 = getelementptr inbounds %struct.display, %struct.display* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i8, i8* %61, align 4
  %63 = sext i8 %62 to i32
  %64 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load %struct.display*, %struct.display** %2, align 8
  %66 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i8, i8* %67, align 4
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 105
  br i1 %70, label %71, label %84

71:                                               ; preds = %58
  %72 = load %struct.display*, %struct.display** %2, align 8
  %73 = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i8, i8* %74, align 4
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 115
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.display*, %struct.display** %2, align 8
  %80 = getelementptr inbounds %struct.display, %struct.display* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %71, %58
  %85 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %86 = call i32 (...) @annotate_display_expression()
  %87 = load %struct.display*, %struct.display** %2, align 8
  %88 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @gdb_stdout, align 4
  %91 = call i32 @print_expression(i32 %89, i32 %90)
  %92 = call i32 (...) @annotate_display_expression_end()
  %93 = load %struct.display*, %struct.display** %2, align 8
  %94 = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %102

100:                                              ; preds = %84
  %101 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %98
  %103 = load %struct.display*, %struct.display** %2, align 8
  %104 = getelementptr inbounds %struct.display, %struct.display* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call %struct.value* @evaluate_expression(i32 %105)
  store %struct.value* %106, %struct.value** %5, align 8
  %107 = load %struct.value*, %struct.value** %5, align 8
  %108 = call i32 @value_as_address(%struct.value* %107)
  store i32 %108, i32* %4, align 4
  %109 = load %struct.display*, %struct.display** %2, align 8
  %110 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i8, i8* %111, align 4
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 105
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @ADDR_BITS_REMOVE(i32 %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %115, %102
  %119 = call i32 (...) @annotate_display_value()
  %120 = load %struct.display*, %struct.display** %2, align 8
  %121 = getelementptr inbounds %struct.display, %struct.display* %120, i32 0, i32 2
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.value*, %struct.value** %5, align 8
  %124 = call i32 @VALUE_BFD_SECTION(%struct.value* %123)
  %125 = bitcast { i64, i8 }* %6 to i8*
  %126 = bitcast %struct.TYPE_2__* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 12, i1 false)
  %127 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %6, i32 0, i32 0
  %128 = load i64, i64* %127, align 4
  %129 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %6, i32 0, i32 1
  %130 = load i8, i8* %129, align 4
  %131 = call i32 @do_examine(i64 %128, i8 %130, i32 %122, i32 %124)
  br label %172

132:                                              ; preds = %28
  %133 = call i32 (...) @annotate_display_format()
  %134 = load %struct.display*, %struct.display** %2, align 8
  %135 = getelementptr inbounds %struct.display, %struct.display* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i8, i8* %136, align 4
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = load %struct.display*, %struct.display** %2, align 8
  %141 = getelementptr inbounds %struct.display, %struct.display* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 2
  %143 = load i8, i8* %142, align 4
  %144 = sext i8 %143 to i32
  %145 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %139, %132
  %147 = call i32 (...) @annotate_display_expression()
  %148 = load %struct.display*, %struct.display** %2, align 8
  %149 = getelementptr inbounds %struct.display, %struct.display* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @gdb_stdout, align 4
  %152 = call i32 @print_expression(i32 %150, i32 %151)
  %153 = call i32 (...) @annotate_display_expression_end()
  %154 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %155 = call i32 (...) @annotate_display_expression()
  %156 = load %struct.display*, %struct.display** %2, align 8
  %157 = getelementptr inbounds %struct.display, %struct.display* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call %struct.value* @evaluate_expression(i32 %158)
  %160 = load %struct.display*, %struct.display** %2, align 8
  %161 = getelementptr inbounds %struct.display, %struct.display* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i8, i8* %162, align 4
  %164 = sext i8 %163 to i32
  %165 = load %struct.display*, %struct.display** %2, align 8
  %166 = getelementptr inbounds %struct.display, %struct.display* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @gdb_stdout, align 4
  %170 = call i32 @print_formatted(%struct.value* %159, i32 %164, i32 %168, i32 %169)
  %171 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %172

172:                                              ; preds = %146, %118
  %173 = call i32 (...) @annotate_display_end()
  %174 = load i32, i32* @gdb_stdout, align 4
  %175 = call i32 @gdb_flush(i32 %174)
  store i32 -1, i32* @current_display_number, align 4
  br label %176

176:                                              ; preds = %172, %27, %11
  ret void
}

declare dso_local i32 @contained_in(i32, i64) #1

declare dso_local i32 @get_selected_block(i32) #1

declare dso_local i32 @annotate_display_begin(...) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @annotate_display_number_end(...) #1

declare dso_local i32 @annotate_display_format(...) #1

declare dso_local i32 @annotate_display_expression(...) #1

declare dso_local i32 @print_expression(i32, i32) #1

declare dso_local i32 @annotate_display_expression_end(...) #1

declare dso_local %struct.value* @evaluate_expression(i32) #1

declare dso_local i32 @value_as_address(%struct.value*) #1

declare dso_local i32 @ADDR_BITS_REMOVE(i32) #1

declare dso_local i32 @annotate_display_value(...) #1

declare dso_local i32 @do_examine(i64, i8, i32, i32) #1

declare dso_local i32 @VALUE_BFD_SECTION(%struct.value*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @print_formatted(%struct.value*, i32, i32, i32) #1

declare dso_local i32 @annotate_display_end(...) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
