; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_show_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_show_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_file_list = type { i8*, i32, i64, %struct.print_file_list* }

@with_line_numbers = common dso_local global i64 0, align 8
@with_source_code = common dso_local global i64 0, align 8
@syms = common dso_local global i32 0, align 4
@prev_functionname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s():\0A\00", align 1
@prev_line = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s:%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@print_files = common dso_local global %struct.print_file_list* null, align 8
@file_start_context = common dso_local global i64 0, align 8
@SHOW_PRECEDING_CONTEXT_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @show_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_line(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.print_file_list**, align 8
  %11 = alloca %struct.print_file_list*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64, i64* @with_line_numbers, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @with_source_code, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %205

19:                                               ; preds = %15, %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @syms, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @bfd_find_nearest_line(i32* %20, i32* %21, i32 %22, i32 %23, i8** %7, i8** %8, i32* %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %205

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* null, i8** %7, align 8
  br label %36

36:                                               ; preds = %35, %30, %27
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i8* null, i8** %8, align 8
  br label %45

45:                                               ; preds = %44, %39, %36
  %46 = load i64, i64* @with_line_numbers, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i8*, i8** @prev_functionname, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** @prev_functionname, align 8
  %57 = call i64 @strcmp(i8* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %51
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %54, %48
  %63 = load i32, i32* %9, align 4
  %64 = icmp ugt i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @prev_line, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %75

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %72 ], [ %74, %73 ]
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %65, %62
  br label %80

80:                                               ; preds = %79, %45
  %81 = load i64, i64* @with_source_code, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %171

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %171

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = icmp ugt i32 %87, 0
  br i1 %88, label %89, label %171

89:                                               ; preds = %86
  store %struct.print_file_list** @print_files, %struct.print_file_list*** %10, align 8
  br label %90

90:                                               ; preds = %104, %89
  %91 = load %struct.print_file_list**, %struct.print_file_list*** %10, align 8
  %92 = load %struct.print_file_list*, %struct.print_file_list** %91, align 8
  %93 = icmp ne %struct.print_file_list* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load %struct.print_file_list**, %struct.print_file_list*** %10, align 8
  %96 = load %struct.print_file_list*, %struct.print_file_list** %95, align 8
  %97 = getelementptr inbounds %struct.print_file_list, %struct.print_file_list* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i64 @strcmp(i8* %98, i8* %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %108

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.print_file_list**, %struct.print_file_list*** %10, align 8
  %106 = load %struct.print_file_list*, %struct.print_file_list** %105, align 8
  %107 = getelementptr inbounds %struct.print_file_list, %struct.print_file_list* %106, i32 0, i32 3
  store %struct.print_file_list** %107, %struct.print_file_list*** %10, align 8
  br label %90

108:                                              ; preds = %102, %90
  %109 = load %struct.print_file_list**, %struct.print_file_list*** %10, align 8
  %110 = load %struct.print_file_list*, %struct.print_file_list** %109, align 8
  store %struct.print_file_list* %110, %struct.print_file_list** %11, align 8
  %111 = load %struct.print_file_list*, %struct.print_file_list** %11, align 8
  %112 = icmp eq %struct.print_file_list* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i8*, i8** %7, align 8
  %115 = call %struct.print_file_list* @update_source_path(i8* %114)
  store %struct.print_file_list* %115, %struct.print_file_list** %11, align 8
  br label %116

116:                                              ; preds = %113, %108
  %117 = load %struct.print_file_list*, %struct.print_file_list** %11, align 8
  %118 = icmp ne %struct.print_file_list* %117, null
  br i1 %118, label %119, label %170

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.print_file_list*, %struct.print_file_list** %11, align 8
  %122 = getelementptr inbounds %struct.print_file_list, %struct.print_file_list* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %170

125:                                              ; preds = %119
  %126 = load i64, i64* @file_start_context, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.print_file_list*, %struct.print_file_list** %11, align 8
  %130 = getelementptr inbounds %struct.print_file_list, %struct.print_file_list* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 1, i32* %12, align 4
  br label %160

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @SHOW_PRECEDING_CONTEXT_LINES, align 4
  %137 = sub i32 %135, %136
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp uge i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store i32 1, i32* %12, align 4
  br label %142

142:                                              ; preds = %141, %134
  %143 = load %struct.print_file_list*, %struct.print_file_list** %11, align 8
  %144 = getelementptr inbounds %struct.print_file_list, %struct.print_file_list* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = icmp uge i32 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %142
  %149 = load %struct.print_file_list*, %struct.print_file_list** %11, align 8
  %150 = getelementptr inbounds %struct.print_file_list, %struct.print_file_list* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = icmp ule i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  %155 = load %struct.print_file_list*, %struct.print_file_list** %11, align 8
  %156 = getelementptr inbounds %struct.print_file_list, %struct.print_file_list* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = add i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %154, %148, %142
  br label %160

160:                                              ; preds = %159, %133
  %161 = load %struct.print_file_list*, %struct.print_file_list** %11, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @dump_lines(%struct.print_file_list* %161, i32 %162, i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.print_file_list*, %struct.print_file_list** %11, align 8
  %167 = getelementptr inbounds %struct.print_file_list, %struct.print_file_list* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 8
  %168 = load %struct.print_file_list*, %struct.print_file_list** %11, align 8
  %169 = getelementptr inbounds %struct.print_file_list, %struct.print_file_list* %168, i32 0, i32 2
  store i64 0, i64* %169, align 8
  br label %170

170:                                              ; preds = %160, %119, %116
  br label %171

171:                                              ; preds = %170, %86, %83, %80
  %172 = load i8*, i8** %8, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %196

174:                                              ; preds = %171
  %175 = load i8*, i8** @prev_functionname, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %182, label %177

177:                                              ; preds = %174
  %178 = load i8*, i8** %8, align 8
  %179 = load i8*, i8** @prev_functionname, align 8
  %180 = call i64 @strcmp(i8* %178, i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %177, %174
  %183 = load i8*, i8** @prev_functionname, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i8*, i8** @prev_functionname, align 8
  %187 = call i32 @free(i8* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i8*, i8** %8, align 8
  %190 = call i64 @strlen(i8* %189)
  %191 = add nsw i64 %190, 1
  %192 = call i8* @xmalloc(i64 %191)
  store i8* %192, i8** @prev_functionname, align 8
  %193 = load i8*, i8** @prev_functionname, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = call i32 @strcpy(i8* %193, i8* %194)
  br label %196

196:                                              ; preds = %188, %177, %171
  %197 = load i32, i32* %9, align 4
  %198 = icmp ugt i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @prev_line, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* @prev_line, align 4
  br label %205

205:                                              ; preds = %18, %26, %203, %199, %196
  ret void
}

declare dso_local i32 @bfd_find_nearest_line(i32*, i32*, i32, i32, i8**, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local %struct.print_file_list* @update_source_path(i8*) #1

declare dso_local i32 @dump_lines(%struct.print_file_list*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
