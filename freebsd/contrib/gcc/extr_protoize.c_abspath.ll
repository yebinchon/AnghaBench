; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_abspath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_abspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cwd_buffer = common dso_local global i8* null, align 8
@DIR_SEPARATOR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [27 x i8] c"%s: invalid file name: %s\0A\00", align 1
@pname = common dso_local global i32 0, align 4
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @abspath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @abspath(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** @cwd_buffer, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i8* [ %14, %13 ], [ %16, %15 ]
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %20, %22
  %24 = add nsw i64 %23, 2
  %25 = call i8* @alloca(i64 %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @IS_ABSOLUTE_PATH(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %17
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %10, align 8
  br label %32

32:                                               ; preds = %39, %30
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  %35 = load i8, i8* %33, align 1
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  store i8 %35, i8* %36, align 1
  %38 = icmp ne i8 %35, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %32

40:                                               ; preds = %32
  %41 = load i8, i8* @DIR_SEPARATOR, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 -1
  store i8 %41, i8* %43, align 1
  br label %44

44:                                               ; preds = %40, %17
  %45 = load i8*, i8** %4, align 8
  store i8* %45, i8** %10, align 8
  br label %46

46:                                               ; preds = %53, %44
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  %49 = load i8, i8* %47, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  store i8 %49, i8* %50, align 1
  %52 = icmp ne i8 %49, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %46

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %9, align 8
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  %58 = load i8, i8* %56, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  store i8 %58, i8* %59, align 1
  br label %61

61:                                               ; preds = %173, %165, %106, %79, %54
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %179

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @IS_DIR_SEPARATOR(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 -1
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @IS_DIR_SEPARATOR(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  br label %61

82:                                               ; preds = %73, %67
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 46
  br i1 %87, label %88, label %171

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = call i64 @IS_DIR_SEPARATOR(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %171

94:                                               ; preds = %88
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  br label %179

100:                                              ; preds = %94
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = call i64 @IS_DIR_SEPARATOR(i8 signext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  store i8* %108, i8** %9, align 8
  br label %61

109:                                              ; preds = %100
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 46
  br i1 %114, label %115, label %168

115:                                              ; preds = %109
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load i8*, i8** %9, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  %124 = load i8, i8* %123, align 1
  %125 = call i64 @IS_DIR_SEPARATOR(i8 signext %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %168

127:                                              ; preds = %121, %115
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @IS_DIR_SEPARATOR(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 3, i32 2
  %135 = load i8*, i8** %9, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %9, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -2
  store i8* %139, i8** %8, align 8
  br label %140

140:                                              ; preds = %152, %127
  %141 = load i8*, i8** %8, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = icmp uge i8* %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i8*, i8** %8, align 8
  %146 = load i8, i8* %145, align 1
  %147 = call i64 @IS_DIR_SEPARATOR(i8 signext %146)
  %148 = icmp ne i64 %147, 0
  %149 = xor i1 %148, true
  br label %150

150:                                              ; preds = %144, %140
  %151 = phi i1 [ false, %140 ], [ %149, %144 ]
  br i1 %151, label %152, label %155

152:                                              ; preds = %150
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 -1
  store i8* %154, i8** %8, align 8
  br label %140

155:                                              ; preds = %150
  %156 = load i8*, i8** %8, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = icmp ult i8* %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i32, i32* @pname, align 4
  %161 = load i8*, i8** %4, align 8
  %162 = call i32 @notice(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %160, i8* %161)
  %163 = load i32, i32* @FATAL_EXIT_CODE, align 4
  %164 = call i32 @exit(i32 %163) #3
  unreachable

165:                                              ; preds = %155
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %8, align 8
  store i8 0, i8* %167, align 1
  br label %61

168:                                              ; preds = %121, %109
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170, %88, %82
  br label %172

172:                                              ; preds = %171
  br label %173

173:                                              ; preds = %172
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %9, align 8
  %176 = load i8, i8* %174, align 1
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %8, align 8
  store i8 %176, i8* %177, align 1
  br label %61

179:                                              ; preds = %99, %66
  %180 = load i8*, i8** %8, align 8
  store i8 0, i8* %180, align 1
  %181 = load i8*, i8** %8, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 -1
  %183 = load i8, i8* %182, align 1
  %184 = call i64 @IS_DIR_SEPARATOR(i8 signext %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %179
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 -1
  store i8* %188, i8** %8, align 8
  store i8 0, i8* %188, align 1
  br label %189

189:                                              ; preds = %186, %179
  %190 = load i8*, i8** %6, align 8
  %191 = load i8*, i8** %8, align 8
  %192 = load i8*, i8** %6, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = trunc i64 %195 to i32
  %197 = call i8* @savestring(i8* %190, i32 %196)
  ret i8* %197
}

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @IS_ABSOLUTE_PATH(i8*) #1

declare dso_local i64 @IS_DIR_SEPARATOR(i8 signext) #1

declare dso_local i32 @notice(i8*, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @savestring(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
