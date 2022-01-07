; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dt_header_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dt_header_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i8*, i32, i32* }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"extern void __dtrace_%s___%s(\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.5 = private unnamed_addr constant [114 x i8] c"#ifndef\09__sparc\0Aextern int __dtraceenabled_%s___%s(void);\0A#else\0Aextern int __dtraceenabled_%s___%s(long);\0A#endif\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i8*)* @dt_header_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_header_decl(i32* %0, %struct.TYPE_8__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %10, align 8
  %26 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %15, align 8
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %40, %3
  %34 = load i8*, i8** %15, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 45)
  store i8* %35, i8** %15, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** %15, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %15, align 8
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  br label %33

43:                                               ; preds = %33
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add nsw i64 %47, 1
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i8* @alloca(i64 %51)
  store i8* %52, i8** %14, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @dt_header_fmt_func(i8* %53, i8* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i64 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %63, i8* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %43
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @dt_set_errno(i32* %68, i32 %69)
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %162

71:                                               ; preds = %43
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %11, align 8
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %114, %71
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %77 = icmp ne %struct.TYPE_7__* %76, null
  br i1 %77, label %78, label %120

78:                                               ; preds = %75
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = trunc i64 %27 to i32
  %89 = call i8* @ctf_type_name(i32 %84, i32 %87, i8* %29, i32 %88)
  %90 = call i64 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* @errno, align 4
  %95 = call i32 @dt_set_errno(i32* %93, i32 %94)
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %162

96:                                               ; preds = %78
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* @errno, align 4
  %112 = call i32 @dt_set_errno(i32* %110, i32 %111)
  store i32 %112, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %162

113:                                              ; preds = %103, %96
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %11, align 8
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %75

120:                                              ; preds = %75
  %121 = load i32, i32* %16, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i64 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* @errno, align 4
  %132 = call i32 @dt_set_errno(i32* %130, i32 %131)
  store i32 %132, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %162

133:                                              ; preds = %123, %120
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i64 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* @errno, align 4
  %142 = call i32 @dt_set_errno(i32* %140, i32 %141)
  store i32 %142, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %162

143:                                              ; preds = %133
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i8*, i8** %14, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** %14, align 8
  %155 = call i64 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i8* %149, i8* %150, i8* %153, i8* %154)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %143
  %158 = load i32*, i32** %9, align 8
  %159 = load i32, i32* @errno, align 4
  %160 = call i32 @dt_set_errno(i32* %158, i32 %159)
  store i32 %160, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %162

161:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %162

162:                                              ; preds = %161, %157, %139, %129, %109, %92, %67
  %163 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @alloca(i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @dt_header_fmt_func(i8*, i8*) #2

declare dso_local i64 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @dt_set_errno(i32*, i32) #2

declare dso_local i8* @ctf_type_name(i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
