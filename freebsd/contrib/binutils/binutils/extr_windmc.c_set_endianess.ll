; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_set_endianess.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_set_endianess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@def_target_arch = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"Can't detect target endianess and architecture.\00", align 1
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@target_is_bigendian = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't detect architecture.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @set_endianess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_endianess(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** @def_target_arch, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_3__* @bfd_find_target(i8* %10, i32* %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @fatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* @target_is_bigendian, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %6, align 8
  %28 = call i8** (...) @bfd_arch_list()
  store i8** %28, i8*** %7, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %89

31:                                               ; preds = %17
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %89

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 45)
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 45)
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %85, %42
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %88

47:                                               ; preds = %43
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @strstr(i8* %49, i8* %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @strlen(i8* %56)
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  br label %62

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %54
  %63 = phi i32 [ %60, %54 ], [ 0, %61 ]
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %9, align 1
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = load i8**, i8*** %7, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = icmp eq i8* %68, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 58
  br i1 %77, label %78, label %85

78:                                               ; preds = %72, %67
  %79 = load i8, i8* %9, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8**, i8*** %7, align 8
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** @def_target_arch, align 8
  br label %88

85:                                               ; preds = %78, %72, %62
  %86 = load i8**, i8*** %7, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %87, i8*** %7, align 8
  br label %43

88:                                               ; preds = %82, %43
  br label %89

89:                                               ; preds = %88, %31, %17
  %90 = load i8*, i8** @def_target_arch, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = call i32 @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  ret void
}

declare dso_local %struct.TYPE_3__* @bfd_find_target(i8*, i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i8** @bfd_arch_list(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
