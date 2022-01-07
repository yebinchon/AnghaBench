; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_setvareq.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_setvareq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.var = type { i32, i32, i8*, i32 (i8*)*, %struct.var* }

@aflag = common dso_local global i64 0, align 8
@VEXPORT = common dso_local global i32 0, align 4
@forcelocal = common dso_local global i64 0, align 8
@VNOSET = common dso_local global i32 0, align 4
@VNOLOCAL = common dso_local global i32 0, align 4
@VREADONLY = common dso_local global i32 0, align 4
@VTEXTFIXED = common dso_local global i32 0, align 4
@VSTACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%.*s: is read only\00", align 1
@INTOFF = common dso_local global i32 0, align 4
@VNOFUNC = common dso_local global i32 0, align 4
@VUNSET = common dso_local global i32 0, align 4
@vmpath = common dso_local global %struct.var zeroinitializer, align 8
@vmail = common dso_local global %struct.var zeroinitializer, align 8
@iflag = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setvareq(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.var*, align 8
  %6 = alloca %struct.var**, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @aflag, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @VEXPORT, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i64, i64* @forcelocal, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @VNOSET, align 4
  %20 = load i32, i32* @VNOLOCAL, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @mklocal(i8* %25)
  br label %27

27:                                               ; preds = %24, %17, %14
  %28 = load i8*, i8** %3, align 8
  %29 = call %struct.var* @find_var(i8* %28, %struct.var*** %6, i32* %7)
  store %struct.var* %29, %struct.var** %5, align 8
  %30 = load %struct.var*, %struct.var** %5, align 8
  %31 = icmp ne %struct.var* %30, null
  br i1 %31, label %32, label %161

32:                                               ; preds = %27
  %33 = load %struct.var*, %struct.var** %5, align 8
  %34 = getelementptr inbounds %struct.var, %struct.var* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VREADONLY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @VTEXTFIXED, align 4
  %42 = load i32, i32* @VSTACK, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @ckfree(i8* %47)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.var*, %struct.var** %5, align 8
  %51 = getelementptr inbounds %struct.var, %struct.var* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.var*, %struct.var** %5, align 8
  %54 = getelementptr inbounds %struct.var, %struct.var* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %55)
  br label %57

57:                                               ; preds = %49, %32
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @VNOSET, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @VTEXTFIXED, align 4
  %65 = load i32, i32* @VSTACK, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @ckfree(i8* %70)
  br label %72

72:                                               ; preds = %69, %62
  br label %215

73:                                               ; preds = %57
  %74 = load i32, i32* @INTOFF, align 4
  %75 = load %struct.var*, %struct.var** %5, align 8
  %76 = getelementptr inbounds %struct.var, %struct.var* %75, i32 0, i32 3
  %77 = load i32 (i8*)*, i32 (i8*)** %76, align 8
  %78 = icmp ne i32 (i8*)* %77, null
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @VNOFUNC, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.var*, %struct.var** %5, align 8
  %86 = getelementptr inbounds %struct.var, %struct.var* %85, i32 0, i32 3
  %87 = load i32 (i8*)*, i32 (i8*)** %86, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = load %struct.var*, %struct.var** %5, align 8
  %90 = getelementptr inbounds %struct.var, %struct.var* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call i32 %87(i8* %94)
  br label %96

96:                                               ; preds = %84, %79, %73
  %97 = load %struct.var*, %struct.var** %5, align 8
  %98 = getelementptr inbounds %struct.var, %struct.var* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @VTEXTFIXED, align 4
  %101 = load i32, i32* @VSTACK, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = load %struct.var*, %struct.var** %5, align 8
  %107 = getelementptr inbounds %struct.var, %struct.var* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @ckfree(i8* %108)
  br label %110

110:                                              ; preds = %105, %96
  %111 = load i32, i32* @VTEXTFIXED, align 4
  %112 = load i32, i32* @VSTACK, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @VUNSET, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = load %struct.var*, %struct.var** %5, align 8
  %118 = getelementptr inbounds %struct.var, %struct.var* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.var*, %struct.var** %5, align 8
  %123 = getelementptr inbounds %struct.var, %struct.var* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load i8*, i8** %3, align 8
  %127 = load %struct.var*, %struct.var** %5, align 8
  %128 = getelementptr inbounds %struct.var, %struct.var* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load %struct.var*, %struct.var** %5, align 8
  %130 = icmp eq %struct.var* %129, @vmpath
  br i1 %130, label %137, label %131

131:                                              ; preds = %110
  %132 = load %struct.var*, %struct.var** %5, align 8
  %133 = icmp eq %struct.var* %132, @vmail
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = call i32 (...) @mpathset()
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %134, %110
  %138 = load i32, i32* @iflag, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 @chkmail(i32 1)
  br label %142

142:                                              ; preds = %140, %137, %134, %131
  %143 = load %struct.var*, %struct.var** %5, align 8
  %144 = getelementptr inbounds %struct.var, %struct.var* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @VEXPORT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %142
  %150 = load i8*, i8** %3, align 8
  %151 = call i64 @localevar(i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i8*, i8** %3, align 8
  %155 = call i32 @change_env(i8* %154, i32 1)
  %156 = load i32, i32* @LC_ALL, align 4
  %157 = call i32 @setlocale(i32 %156, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %158 = call i32 (...) @updatecharset()
  br label %159

159:                                              ; preds = %153, %149, %142
  %160 = load i32, i32* @INTON, align 4
  br label %215

161:                                              ; preds = %27
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @VNOSET, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @VTEXTFIXED, align 4
  %169 = load i32, i32* @VSTACK, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load i8*, i8** %3, align 8
  %175 = call i32 @ckfree(i8* %174)
  br label %176

176:                                              ; preds = %173, %166
  br label %215

177:                                              ; preds = %161
  %178 = load i32, i32* @INTOFF, align 4
  %179 = call %struct.var* @ckmalloc(i32 32)
  store %struct.var* %179, %struct.var** %5, align 8
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.var*, %struct.var** %5, align 8
  %182 = getelementptr inbounds %struct.var, %struct.var* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load i8*, i8** %3, align 8
  %184 = load %struct.var*, %struct.var** %5, align 8
  %185 = getelementptr inbounds %struct.var, %struct.var* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.var*, %struct.var** %5, align 8
  %188 = getelementptr inbounds %struct.var, %struct.var* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.var**, %struct.var*** %6, align 8
  %190 = load %struct.var*, %struct.var** %189, align 8
  %191 = load %struct.var*, %struct.var** %5, align 8
  %192 = getelementptr inbounds %struct.var, %struct.var* %191, i32 0, i32 4
  store %struct.var* %190, %struct.var** %192, align 8
  %193 = load %struct.var*, %struct.var** %5, align 8
  %194 = getelementptr inbounds %struct.var, %struct.var* %193, i32 0, i32 3
  store i32 (i8*)* null, i32 (i8*)** %194, align 8
  %195 = load %struct.var*, %struct.var** %5, align 8
  %196 = load %struct.var**, %struct.var*** %6, align 8
  store %struct.var* %195, %struct.var** %196, align 8
  %197 = load %struct.var*, %struct.var** %5, align 8
  %198 = getelementptr inbounds %struct.var, %struct.var* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @VEXPORT, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %177
  %204 = load i8*, i8** %3, align 8
  %205 = call i64 @localevar(i8* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i8*, i8** %3, align 8
  %209 = call i32 @change_env(i8* %208, i32 1)
  %210 = load i32, i32* @LC_ALL, align 4
  %211 = call i32 @setlocale(i32 %210, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %212 = call i32 (...) @updatecharset()
  br label %213

213:                                              ; preds = %207, %203, %177
  %214 = load i32, i32* @INTON, align 4
  br label %215

215:                                              ; preds = %213, %176, %159, %72
  ret void
}

declare dso_local i32 @mklocal(i8*) #1

declare dso_local %struct.var* @find_var(i8*, %struct.var***, i32*) #1

declare dso_local i32 @ckfree(i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @mpathset(...) #1

declare dso_local i32 @chkmail(i32) #1

declare dso_local i64 @localevar(i8*) #1

declare dso_local i32 @change_env(i8*, i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @updatecharset(...) #1

declare dso_local %struct.var* @ckmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
