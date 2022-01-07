; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_load_proc_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_load_proc_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32**, i32** }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"LM%x`%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*, i8*)* @dt_module_load_proc_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_module_load_proc_build(i8* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %12, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32* @Pname_to_ctf(i32 %27, i8* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %121

33:                                               ; preds = %3
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @ctf_dup(i32* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %121

39:                                               ; preds = %33
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* %40, i32** %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = trunc i64 %17 to i32
  %56 = call i32 @Pobjname(i32 %51, i32 %54, i8* %19, i32 %55)
  %57 = call i8* @strrchr(i8* %19, i8 signext 47)
  store i8* %57, i8** %11, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %39
  store i8* %19, i8** %11, align 8
  br label %63

60:                                               ; preds = %39
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 8
  br label %63

63:                                               ; preds = %60, %59
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @Plmid(i32 %66, i32 %69, i64* %14)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i64 0, i64* %14, align 8
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i64, i64* %14, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i8*, i8** %11, align 8
  %78 = call i32* @strdup(i8* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  store i32* %78, i32** %86, align 8
  br label %99

87:                                               ; preds = %73
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i64, i64* %14, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @asprintf(i32** %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %96, i8* %97)
  br label %99

99:                                               ; preds = %87, %76
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %121

111:                                              ; preds = %99
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = call i32 @ctf_setspecific(i32* %112, %struct.TYPE_7__* %115)
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %121

121:                                              ; preds = %111, %110, %38, %32
  %122 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @Pname_to_ctf(i32, i8*) #2

declare dso_local i32* @ctf_dup(i32*) #2

declare dso_local i32 @Pobjname(i32, i32, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @Plmid(i32, i32, i64*) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i32 @asprintf(i32**, i8*, i64, i8*) #2

declare dso_local i32 @ctf_setspecific(i32*, %struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
