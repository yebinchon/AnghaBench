; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_process_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_process_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_block = type { %struct.diff_block*, i32**, i32**, i32** }

@PTRDIFF_MAX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: diff failed: \00", align 1
@program_name = common dso_local global i8* null, align 8
@EXIT_TROUBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"internal error: invalid diff type in process_diff\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"invalid diff format; invalid change separator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diff_block* (i8*, i8*, %struct.diff_block**)* @process_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diff_block* @process_diff(i8* %0, i8* %1, %struct.diff_block** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.diff_block**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.diff_block*, align 8
  %13 = alloca %struct.diff_block**, align 8
  %14 = alloca %struct.diff_block*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.diff_block** %2, %struct.diff_block*** %6, align 8
  %18 = load i64, i64* @PTRDIFF_MAX, align 8
  %19 = call i64 @MIN(i32 4, i32 4)
  %20 = udiv i64 %18, %19
  store i64 %20, i64* %15, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @read_diff(i8* %21, i8* %22, i8** %7)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %9, align 8
  store %struct.diff_block** %12, %struct.diff_block*** %13, align 8
  store %struct.diff_block* null, %struct.diff_block** %14, align 8
  br label %25

25:                                               ; preds = %222, %3
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %227

29:                                               ; preds = %25
  %30 = call i8* @xmalloc(i64 32)
  %31 = bitcast i8* %30 to %struct.diff_block*
  store %struct.diff_block* %31, %struct.diff_block** %14, align 8
  %32 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %33 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %32, i32 0, i32 2
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %37 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %36, i32 0, i32 2
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %41 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %45 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %49 = call i32 @process_diff_control(i8** %9, %struct.diff_block* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ERROR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %29
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 10
  br i1 %57, label %58, label %77

58:                                               ; preds = %53, %29
  %59 = load i32, i32* @stderr, align 4
  %60 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %61 = load i8*, i8** @program_name, align 8
  %62 = call i32 @fprintf(i32 %59, i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %68, %58
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @putc(i8 signext %65, i32 %66)
  br label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 10
  br i1 %73, label %63, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @EXIT_TROUBLE, align 4
  %76 = call i32 @exit(i32 %75) #3
  unreachable

77:                                               ; preds = %53
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  %80 = load i32, i32* %10, align 4
  switch i32 %80, label %100 [
    i32 130, label %81
    i32 128, label %90
    i32 129, label %99
  ]

81:                                               ; preds = %77
  %82 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %83 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %82, i32 0, i32 3
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %102

90:                                               ; preds = %77
  %91 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %92 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %91, i32 0, i32 3
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %102

99:                                               ; preds = %77
  br label %102

100:                                              ; preds = %77
  %101 = call i32 @fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %99, %90, %81
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 130
  br i1 %104, label %105, label %156

105:                                              ; preds = %102
  %106 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %107 = call i64 @D_NUMLINES(%struct.diff_block* %106, i32 0)
  store i64 %107, i64* %16, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %16, align 8
  %110 = icmp ule i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 (...) @xalloc_die()
  br label %113

113:                                              ; preds = %111, %105
  %114 = load i64, i64* %16, align 8
  %115 = mul i64 %114, 4
  %116 = call i8* @xmalloc(i64 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %119 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %118, i32 0, i32 2
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 0
  store i32* %117, i32** %121, align 8
  %122 = load i64, i64* %16, align 8
  %123 = mul i64 %122, 4
  %124 = call i8* @xmalloc(i64 %123)
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %127 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  store i32* %125, i32** %129, align 8
  store i64 0, i64* %11, align 8
  br label %130

130:                                              ; preds = %152, %113
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* %16, align 8
  %133 = icmp ult i64 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = load i8*, i8** %9, align 8
  %136 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %137 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %136, i32 0, i32 2
  %138 = load i32**, i32*** %137, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %11, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %144 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %143, i32 0, i32 1
  %145 = load i32**, i32*** %144, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i8*, i8** %8, align 8
  %151 = call i8* @scan_diff_line(i8* %135, i32* %142, i32* %149, i8* %150, i8 signext 60)
  store i8* %151, i8** %9, align 8
  br label %152

152:                                              ; preds = %134
  %153 = load i64, i64* %11, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %11, align 8
  br label %130

155:                                              ; preds = %130
  br label %156

156:                                              ; preds = %155, %102
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %157, 129
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load i8*, i8** %9, align 8
  %161 = call i64 @strncmp(i8* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 @fatal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %159
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 4
  store i8* %167, i8** %9, align 8
  br label %168

168:                                              ; preds = %165, %156
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 128
  br i1 %170, label %171, label %222

171:                                              ; preds = %168
  %172 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %173 = call i64 @D_NUMLINES(%struct.diff_block* %172, i32 1)
  store i64 %173, i64* %17, align 8
  %174 = load i64, i64* %15, align 8
  %175 = load i64, i64* %17, align 8
  %176 = icmp ule i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = call i32 (...) @xalloc_die()
  br label %179

179:                                              ; preds = %177, %171
  %180 = load i64, i64* %17, align 8
  %181 = mul i64 %180, 4
  %182 = call i8* @xmalloc(i64 %181)
  %183 = bitcast i8* %182 to i32*
  %184 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %185 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %184, i32 0, i32 2
  %186 = load i32**, i32*** %185, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 1
  store i32* %183, i32** %187, align 8
  %188 = load i64, i64* %17, align 8
  %189 = mul i64 %188, 4
  %190 = call i8* @xmalloc(i64 %189)
  %191 = bitcast i8* %190 to i32*
  %192 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %193 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %192, i32 0, i32 1
  %194 = load i32**, i32*** %193, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i64 1
  store i32* %191, i32** %195, align 8
  store i64 0, i64* %11, align 8
  br label %196

196:                                              ; preds = %218, %179
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* %17, align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %221

200:                                              ; preds = %196
  %201 = load i8*, i8** %9, align 8
  %202 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %203 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %202, i32 0, i32 2
  %204 = load i32**, i32*** %203, align 8
  %205 = getelementptr inbounds i32*, i32** %204, i64 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %11, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %210 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %209, i32 0, i32 1
  %211 = load i32**, i32*** %210, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* %11, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i8*, i8** %8, align 8
  %217 = call i8* @scan_diff_line(i8* %201, i32* %208, i32* %215, i8* %216, i8 signext 62)
  store i8* %217, i8** %9, align 8
  br label %218

218:                                              ; preds = %200
  %219 = load i64, i64* %11, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %11, align 8
  br label %196

221:                                              ; preds = %196
  br label %222

222:                                              ; preds = %221, %168
  %223 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %224 = load %struct.diff_block**, %struct.diff_block*** %13, align 8
  store %struct.diff_block* %223, %struct.diff_block** %224, align 8
  %225 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %226 = getelementptr inbounds %struct.diff_block, %struct.diff_block* %225, i32 0, i32 0
  store %struct.diff_block** %226, %struct.diff_block*** %13, align 8
  br label %25

227:                                              ; preds = %25
  %228 = load %struct.diff_block**, %struct.diff_block*** %13, align 8
  store %struct.diff_block* null, %struct.diff_block** %228, align 8
  %229 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %230 = load %struct.diff_block**, %struct.diff_block*** %6, align 8
  store %struct.diff_block* %229, %struct.diff_block** %230, align 8
  %231 = load %struct.diff_block*, %struct.diff_block** %12, align 8
  ret %struct.diff_block* %231
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i8* @read_diff(i8*, i8*, i8**) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @process_diff_control(i8**, %struct.diff_block*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @D_NUMLINES(%struct.diff_block*, i32) #1

declare dso_local i32 @xalloc_die(...) #1

declare dso_local i8* @scan_diff_line(i8*, i32*, i32*, i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
