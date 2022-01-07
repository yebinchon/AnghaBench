; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_output_diff3_edscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_output_diff3_edscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff3_block = type { i64, %struct.diff3_block* }

@DIFF_1ST = common dso_local global i64 0, align 8
@show_2nd = common dso_local global i64 0, align 8
@overlap_only = common dso_local global i32 0, align 4
@simple_only = common dso_local global i32 0, align 4
@flagging = common dso_local global i32 0, align 4
@FILE0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%lda\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"||||||| %s\0A\00", align 1
@FILE1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"=======\0A\00", align 1
@FILE2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c">>>>>>> %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%lda\0A<<<<<<< %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%ldd\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%ld,%ldd\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%ldc\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%ld,%ldc\0A\00", align 1
@finalwrite = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"w\0Aq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.diff3_block*, i32*, i32*, i8*, i8*, i8*)* @output_diff3_edscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_diff3_edscript(i32* %0, %struct.diff3_block* %1, i32* %2, i32* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.diff3_block*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.diff3_block*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.diff3_block* %1, %struct.diff3_block** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.diff3_block*, %struct.diff3_block** %9, align 8
  %23 = call %struct.diff3_block* @reverse_diff3_blocklist(%struct.diff3_block* %22)
  store %struct.diff3_block* %23, %struct.diff3_block** %18, align 8
  br label %24

24:                                               ; preds = %230, %7
  %25 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %26 = icmp ne %struct.diff3_block* %25, null
  br i1 %26, label %27, label %234

27:                                               ; preds = %24
  %28 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %29 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 128
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %45

33:                                               ; preds = %27
  %34 = load i64, i64* @DIFF_1ST, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %37 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DIFF_1ST, align 8
  %40 = sub i64 %38, %39
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %34, %43
  br label %45

45:                                               ; preds = %33, %32
  %46 = phi i64 [ 128, %32 ], [ %44, %33 ]
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  switch i32 %48, label %49 [
    i32 130, label %50
    i32 129, label %55
    i32 128, label %60
  ]

49:                                               ; preds = %45
  br label %230

50:                                               ; preds = %45
  %51 = load i64, i64* @show_2nd, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %230

54:                                               ; preds = %50
  store i32 1, i32* %17, align 4
  br label %66

55:                                               ; preds = %45
  %56 = load i32, i32* @overlap_only, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %230

59:                                               ; preds = %55
  store i32 0, i32* %17, align 4
  br label %66

60:                                               ; preds = %45
  %61 = load i32, i32* @simple_only, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %230

64:                                               ; preds = %60
  %65 = load i32, i32* @flagging, align 4
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %64, %59, %54
  %67 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i64, i64* @FILE0, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @D_LOWLINE(%struct.diff3_block* %67, i32 %71)
  store i64 %72, i64* %20, align 8
  %73 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i64, i64* @FILE0, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @D_HIGHLINE(%struct.diff3_block* %73, i32 %77)
  store i64 %78, i64* %21, align 8
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %172

81:                                               ; preds = %66
  store i32 1, i32* %16, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i64, i64* %21, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %83)
  store i32 0, i32* %15, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp eq i32 %85, 128
  br i1 %86, label %87, label %113

87:                                               ; preds = %81
  %88 = load i64, i64* @show_2nd, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i32*, i32** %8, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i64, i64* @FILE1, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dotlines(i32* %94, %struct.diff3_block* %95, i32 %99)
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %90, %87
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i64, i64* @FILE2, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dotlines(i32* %104, %struct.diff3_block* %105, i32 %109)
  %111 = load i32, i32* %15, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %101, %81
  %114 = load i32*, i32** %8, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %15, align 4
  %119 = load i64, i64* %21, align 8
  %120 = add nsw i64 %119, 2
  %121 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i64, i64* @FILE1, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @D_NUMLINES(%struct.diff3_block* %121, i32 %125)
  %127 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i64, i64* @FILE2, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @D_NUMLINES(%struct.diff3_block* %127, i32 %131)
  %133 = add nsw i64 %126, %132
  %134 = add nsw i64 %133, 1
  %135 = call i32 @undotlines(i32* %117, i32 %118, i64 %120, i64 %134)
  %136 = load i32*, i32** %8, align 8
  %137 = load i64, i64* %20, align 8
  %138 = sub nsw i64 %137, 1
  %139 = load i32, i32* %19, align 4
  %140 = icmp eq i32 %139, 128
  br i1 %140, label %141, label %143

141:                                              ; preds = %113
  %142 = load i8*, i8** %12, align 8
  br label %145

143:                                              ; preds = %113
  %144 = load i8*, i8** %13, align 8
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i8* [ %142, %141 ], [ %144, %143 ]
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %138, i8* %146)
  store i32 0, i32* %15, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp eq i32 %148, 130
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i32*, i32** %8, align 8
  %152 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = load i64, i64* @FILE1, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dotlines(i32* %151, %struct.diff3_block* %152, i32 %156)
  store i32 %157, i32* %15, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 (i32*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %160

160:                                              ; preds = %150, %145
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load i64, i64* %20, align 8
  %164 = add nsw i64 %163, 1
  %165 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i64, i64* @FILE1, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @D_NUMLINES(%struct.diff3_block* %165, i32 %169)
  %171 = call i32 @undotlines(i32* %161, i32 %162, i64 %164, i64 %170)
  br label %229

172:                                              ; preds = %66
  %173 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = load i64, i64* @FILE2, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @D_NUMLINES(%struct.diff3_block* %173, i32 %177)
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %172
  %181 = load i64, i64* %20, align 8
  %182 = load i64, i64* %21, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32*, i32** %8, align 8
  %186 = load i64, i64* %20, align 8
  %187 = call i32 (i32*, i8*, ...) @fprintf(i32* %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %186)
  br label %193

188:                                              ; preds = %180
  %189 = load i32*, i32** %8, align 8
  %190 = load i64, i64* %20, align 8
  %191 = load i64, i64* %21, align 8
  %192 = call i32 (i32*, i8*, ...) @fprintf(i32* %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %190, i64 %191)
  br label %193

193:                                              ; preds = %188, %184
  br label %228

194:                                              ; preds = %172
  %195 = load i64, i64* %21, align 8
  %196 = load i64, i64* %20, align 8
  %197 = sub nsw i64 %195, %196
  switch i64 %197, label %206 [
    i64 -1, label %198
    i64 0, label %202
  ]

198:                                              ; preds = %194
  %199 = load i32*, i32** %8, align 8
  %200 = load i64, i64* %21, align 8
  %201 = call i32 (i32*, i8*, ...) @fprintf(i32* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %200)
  br label %211

202:                                              ; preds = %194
  %203 = load i32*, i32** %8, align 8
  %204 = load i64, i64* %21, align 8
  %205 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i64 %204)
  br label %211

206:                                              ; preds = %194
  %207 = load i32*, i32** %8, align 8
  %208 = load i64, i64* %20, align 8
  %209 = load i64, i64* %21, align 8
  %210 = call i32 (i32*, i8*, ...) @fprintf(i32* %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 %208, i64 %209)
  br label %211

211:                                              ; preds = %206, %202, %198
  %212 = load i32*, i32** %8, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %215 = load i32*, i32** %10, align 8
  %216 = load i64, i64* @FILE2, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @dotlines(i32* %213, %struct.diff3_block* %214, i32 %218)
  %220 = load i64, i64* %20, align 8
  %221 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %222 = load i32*, i32** %10, align 8
  %223 = load i64, i64* @FILE2, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @D_NUMLINES(%struct.diff3_block* %221, i32 %225)
  %227 = call i32 @undotlines(i32* %212, i32 %219, i64 %220, i64 %226)
  br label %228

228:                                              ; preds = %211, %193
  br label %229

229:                                              ; preds = %228, %160
  br label %230

230:                                              ; preds = %229, %63, %58, %53, %49
  %231 = load %struct.diff3_block*, %struct.diff3_block** %18, align 8
  %232 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %231, i32 0, i32 1
  %233 = load %struct.diff3_block*, %struct.diff3_block** %232, align 8
  store %struct.diff3_block* %233, %struct.diff3_block** %18, align 8
  br label %24

234:                                              ; preds = %24
  %235 = load i64, i64* @finalwrite, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32*, i32** %8, align 8
  %239 = call i32 (i32*, i8*, ...) @fprintf(i32* %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %240

240:                                              ; preds = %237, %234
  %241 = load i32, i32* %16, align 4
  ret i32 %241
}

declare dso_local %struct.diff3_block* @reverse_diff3_blocklist(%struct.diff3_block*) #1

declare dso_local i64 @D_LOWLINE(%struct.diff3_block*, i32) #1

declare dso_local i64 @D_HIGHLINE(%struct.diff3_block*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @dotlines(i32*, %struct.diff3_block*, i32) #1

declare dso_local i32 @undotlines(i32*, i32, i64, i64) #1

declare dso_local i64 @D_NUMLINES(%struct.diff3_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
