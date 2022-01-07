; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-unix.c_pex_unix_exec_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-unix.c_pex_unix_exec_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pex_obj = type { i32 }

@errno = common dso_local global i32 0, align 4
@VFORK_STRING = common dso_local global i8* null, align 8
@STDIN_FILE_NO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dup2\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@STDOUT_FILE_NO = common dso_local global i32 0, align 4
@STDERR_FILE_NO = common dso_local global i32 0, align 4
@PEX_STDERR_TO_STDOUT = common dso_local global i32 0, align 4
@environ = common dso_local global i8** null, align 8
@PEX_SEARCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"execvp\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"execv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pex_obj*, i32, i8*, i8**, i8**, i32, i32, i32, i32, i8**, i32*)* @pex_unix_exec_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pex_unix_exec_child(%struct.pex_obj* %0, i32 %1, i8* %2, i8** %3, i8** %4, i32 %5, i32 %6, i32 %7, i32 %8, i8** %9, i32* %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca %struct.pex_obj*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.pex_obj* %0, %struct.pex_obj** %13, align 8
  store i32 %1, i32* %14, align 4
  store i8* %2, i8** %15, align 8
  store i8** %3, i8*** %16, align 8
  store i8** %4, i8*** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i8** %9, i8*** %22, align 8
  store i32* %10, i32** %23, align 8
  store volatile i32 1, i32* %25, align 4
  store i32 -1, i32* %24, align 4
  store volatile i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %40, %11
  %28 = load volatile i32, i32* %26, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = call i32 @vfork() #3
  store i32 %31, i32* %24, align 4
  %32 = load i32, i32* %24, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %43

35:                                               ; preds = %30
  %36 = load volatile i32, i32* %25, align 4
  %37 = call i32 @sleep(i32 %36)
  %38 = load volatile i32, i32* %25, align 4
  %39 = mul nsw i32 %38, 2
  store volatile i32 %39, i32* %25, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load volatile i32, i32* %26, align 4
  %42 = add nsw i32 %41, 1
  store volatile i32 %42, i32* %26, align 4
  br label %27

43:                                               ; preds = %34, %27
  %44 = load i32, i32* %24, align 4
  switch i32 %44, label %178 [
    i32 -1, label %45
    i32 0, label %50
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @errno, align 4
  %47 = load i32*, i32** %23, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** @VFORK_STRING, align 8
  %49 = load i8**, i8*** %22, align 8
  store i8* %48, i8** %49, align 8
  store i64 -1, i64* %12, align 8
  br label %220

50:                                               ; preds = %43
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* @STDIN_FILE_NO, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @STDIN_FILE_NO, align 4
  %57 = call i32 @dup2(i32 %55, i32 %56)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.pex_obj*, %struct.pex_obj** %13, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @pex_child_error(%struct.pex_obj* %60, i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @close(i32 %65)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.pex_obj*, %struct.pex_obj** %13, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* @errno, align 4
  %72 = call i32 @pex_child_error(%struct.pex_obj* %69, i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %64
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* @STDOUT_FILE_NO, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* @STDOUT_FILE_NO, align 4
  %81 = call i32 @dup2(i32 %79, i32 %80)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.pex_obj*, %struct.pex_obj** %13, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = load i32, i32* @errno, align 4
  %87 = call i32 @pex_child_error(%struct.pex_obj* %84, i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %19, align 4
  %90 = call i32 @close(i32 %89)
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load %struct.pex_obj*, %struct.pex_obj** %13, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 @pex_child_error(%struct.pex_obj* %93, i8* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %92, %88
  br label %98

98:                                               ; preds = %97, %74
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* @STDERR_FILE_NO, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* @STDERR_FILE_NO, align 4
  %105 = call i32 @dup2(i32 %103, i32 %104)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.pex_obj*, %struct.pex_obj** %13, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load i32, i32* @errno, align 4
  %111 = call i32 @pex_child_error(%struct.pex_obj* %108, i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %20, align 4
  %114 = call i32 @close(i32 %113)
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load %struct.pex_obj*, %struct.pex_obj** %13, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* @errno, align 4
  %120 = call i32 @pex_child_error(%struct.pex_obj* %117, i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %116, %112
  br label %122

122:                                              ; preds = %121, %98
  %123 = load i32, i32* %21, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* %21, align 4
  %127 = call i32 @close(i32 %126)
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.pex_obj*, %struct.pex_obj** %13, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = load i32, i32* @errno, align 4
  %133 = call i32 @pex_child_error(%struct.pex_obj* %130, i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %129, %125
  br label %135

135:                                              ; preds = %134, %122
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @PEX_STDERR_TO_STDOUT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load i32, i32* @STDOUT_FILE_NO, align 4
  %142 = load i32, i32* @STDERR_FILE_NO, align 4
  %143 = call i32 @dup2(i32 %141, i32 %142)
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.pex_obj*, %struct.pex_obj** %13, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = load i32, i32* @errno, align 4
  %149 = call i32 @pex_child_error(%struct.pex_obj* %146, i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %145, %140
  br label %151

151:                                              ; preds = %150, %135
  %152 = load i8**, i8*** %17, align 8
  %153 = icmp ne i8** %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i8**, i8*** %17, align 8
  store i8** %155, i8*** @environ, align 8
  br label %156

156:                                              ; preds = %154, %151
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @PEX_SEARCH, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load i8*, i8** %15, align 8
  %163 = load i8**, i8*** %16, align 8
  %164 = call i32 @execvp(i8* %162, i8** %163)
  %165 = load %struct.pex_obj*, %struct.pex_obj** %13, align 8
  %166 = load i8*, i8** %15, align 8
  %167 = load i32, i32* @errno, align 4
  %168 = call i32 @pex_child_error(%struct.pex_obj* %165, i8* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  br label %177

169:                                              ; preds = %156
  %170 = load i8*, i8** %15, align 8
  %171 = load i8**, i8*** %16, align 8
  %172 = call i32 @execv(i8* %170, i8** %171)
  %173 = load %struct.pex_obj*, %struct.pex_obj** %13, align 8
  %174 = load i8*, i8** %15, align 8
  %175 = load i32, i32* @errno, align 4
  %176 = call i32 @pex_child_error(%struct.pex_obj* %173, i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %169, %161
  store i64 -1, i64* %12, align 8
  br label %220

178:                                              ; preds = %43
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* @STDIN_FILE_NO, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @close(i32 %183)
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load i32, i32* @errno, align 4
  %188 = load i32*, i32** %23, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i8**, i8*** %22, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %189, align 8
  store i64 -1, i64* %12, align 8
  br label %220

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %178
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* @STDOUT_FILE_NO, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %191
  %196 = load i32, i32* %19, align 4
  %197 = call i32 @close(i32 %196)
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load i32, i32* @errno, align 4
  %201 = load i32*, i32** %23, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i8**, i8*** %22, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %202, align 8
  store i64 -1, i64* %12, align 8
  br label %220

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203, %191
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* @STDERR_FILE_NO, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load i32, i32* %20, align 4
  %210 = call i32 @close(i32 %209)
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = load i32, i32* @errno, align 4
  %214 = load i32*, i32** %23, align 8
  store i32 %213, i32* %214, align 4
  %215 = load i8**, i8*** %22, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %215, align 8
  store i64 -1, i64* %12, align 8
  br label %220

216:                                              ; preds = %208
  br label %217

217:                                              ; preds = %216, %204
  %218 = load i32, i32* %24, align 4
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %12, align 8
  br label %220

220:                                              ; preds = %217, %212, %199, %186, %177, %45
  %221 = load i64, i64* %12, align 8
  ret i64 %221
}

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #1

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @pex_child_error(%struct.pex_obj*, i8*, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @execvp(i8*, i8**) #2

declare dso_local i32 @execv(i8*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
