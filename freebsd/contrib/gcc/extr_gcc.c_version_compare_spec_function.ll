; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_version_compare_spec_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_version_compare_spec_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [40 x i8] c"too few arguments to %%:version-compare\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"too many arguments to %%:version-compare\00", align 1
@n_switches = common dso_local global i32 0, align 4
@switches = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"unknown operator '%s' in %%:version-compare\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8**)* @version_compare_spec_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @version_compare_spec_function(i32 %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i32 1, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %17
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 60
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 62
  br i1 %42, label %43, label %52

43:                                               ; preds = %35, %27
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 33
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 2, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %43, %35
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 3
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strlen(i8* %65)
  store i64 %66, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %102, %59
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @n_switches, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %105

71:                                               ; preds = %67
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @strncmp(i8* %77, i8* %83, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %11, align 4
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @check_live_switch(i32 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @switches, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %9, align 8
  br label %101

101:                                              ; preds = %92, %87, %71
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %67

105:                                              ; preds = %67
  %106 = load i8*, i8** %9, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %6, align 4
  br label %125

109:                                              ; preds = %105
  %110 = load i8*, i8** %9, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @compare_version_strings(i8* %110, i8* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load i8*, i8** %9, align 8
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @compare_version_strings(i8* %118, i8* %121)
  store i32 %122, i32* %7, align 4
  br label %124

123:                                              ; preds = %109
  store i32 -1, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %117
  br label %125

125:                                              ; preds = %124, %108
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = shl i32 %131, 8
  %133 = load i8**, i8*** %5, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = or i32 %132, %138
  switch i32 %139, label %184 [
    i32 15933, label %140
    i32 8508, label %144
    i32 15360, label %153
    i32 8510, label %157
    i32 15932, label %166
    i32 15422, label %175
  ]

140:                                              ; preds = %125
  %141 = load i32, i32* %6, align 4
  %142 = icmp sge i32 %141, 0
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %12, align 4
  br label %189

144:                                              ; preds = %125
  %145 = load i32, i32* %6, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i8*, i8** %9, align 8
  %149 = icmp eq i8* %148, null
  br label %150

150:                                              ; preds = %147, %144
  %151 = phi i1 [ true, %144 ], [ %149, %147 ]
  %152 = zext i1 %151 to i32
  store i32 %152, i32* %12, align 4
  br label %189

153:                                              ; preds = %125
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %12, align 4
  br label %189

157:                                              ; preds = %125
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i8*, i8** %9, align 8
  %162 = icmp eq i8* %161, null
  br label %163

163:                                              ; preds = %160, %157
  %164 = phi i1 [ true, %157 ], [ %162, %160 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %12, align 4
  br label %189

166:                                              ; preds = %125
  %167 = load i32, i32* %6, align 4
  %168 = icmp sge i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 0
  br label %172

172:                                              ; preds = %169, %166
  %173 = phi i1 [ false, %166 ], [ %171, %169 ]
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %12, align 4
  br label %189

175:                                              ; preds = %125
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %7, align 4
  %180 = icmp sge i32 %179, 0
  br label %181

181:                                              ; preds = %178, %175
  %182 = phi i1 [ true, %175 ], [ %180, %178 ]
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %12, align 4
  br label %189

184:                                              ; preds = %125
  %185 = load i8**, i8*** %5, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %187)
  br label %189

189:                                              ; preds = %184, %181, %172, %163, %153, %150, %140
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  store i8* null, i8** %3, align 8
  br label %200

193:                                              ; preds = %189
  %194 = load i8**, i8*** %5, align 8
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %194, i64 %197
  %199 = load i8*, i8** %198, align 8
  store i8* %199, i8** %3, align 8
  br label %200

200:                                              ; preds = %193, %192
  %201 = load i8*, i8** %3, align 8
  ret i8* %201
}

declare dso_local i32 @fatal(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @check_live_switch(i32, i64) #1

declare dso_local i32 @compare_version_strings(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
