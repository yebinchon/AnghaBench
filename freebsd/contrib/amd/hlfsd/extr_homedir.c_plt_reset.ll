; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_homedir.c_plt_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_homedir.c_plt_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8* }
%struct.passwd = type { i32 }

@lastchild = common dso_local global i32* null, align 8
@max_pwtab_num = common dso_local global i64 0, align 8
@cur_pwtab_num = common dso_local global i32 0, align 4
@pwtab = common dso_local global %struct.TYPE_4__* null, align 8
@INVALIDID = common dso_local global i8* null, align 8
@untab = common dso_local global %struct.TYPE_3__* null, align 8
@root_home = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @plt_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plt_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @hlfsd_setpwent()
  %4 = call %struct.passwd* (...) @hlfsd_getpwent()
  %5 = icmp eq %struct.passwd* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @hlfsd_endpwent()
  store i32 -1, i32* %1, align 4
  br label %98

8:                                                ; preds = %0
  %9 = call i32 (...) @hlfsd_endpwent()
  store i32* null, i32** @lastchild, align 8
  %10 = load i64, i64* @max_pwtab_num, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %91

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %87, %12
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @cur_pwtab_num, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %90

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwtab, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwtab, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @XFREE(i8* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwtab, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %25, %17
  %39 = load i8*, i8** @INVALIDID, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwtab, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i8* %39, i8** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwtab, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwtab, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i8* null, i8** %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @untab, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %38
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @untab, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @XFREE(i8* %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @untab, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i8* null, i8** %74, align 8
  br label %75

75:                                               ; preds = %62, %38
  %76 = load i8*, i8** @INVALIDID, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @untab, align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i8* %76, i8** %81, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @untab, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i8* null, i8** %86, align 8
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %13

90:                                               ; preds = %13
  br label %91

91:                                               ; preds = %90, %8
  store i32 0, i32* @cur_pwtab_num, align 4
  %92 = load i8*, i8** @root_home, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** @root_home, align 8
  %96 = call i32 @XFREE(i8* %95)
  br label %97

97:                                               ; preds = %94, %91
  store i32 0, i32* %1, align 4
  br label %98

98:                                               ; preds = %97, %6
  %99 = load i32, i32* %1, align 4
  ret i32 %99
}

declare dso_local i32 @hlfsd_setpwent(...) #1

declare dso_local %struct.passwd* @hlfsd_getpwent(...) #1

declare dso_local i32 @hlfsd_endpwent(...) #1

declare dso_local i32 @XFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
