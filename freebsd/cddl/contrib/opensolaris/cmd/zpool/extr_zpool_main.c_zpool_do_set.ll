; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"missing property=value argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"missing pool name\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"too many pool names\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"missing value in property=value argument\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@set_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_set(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %30

18:                                               ; preds = %10
  %19 = load i32, i32* @stderr, align 4
  %20 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* %20, i32 %26)
  %28 = load i32, i32* @B_FALSE, align 4
  %29 = call i32 @usage(i32 %28)
  br label %30

30:                                               ; preds = %18, %10, %2
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* %35)
  %37 = load i32, i32* @B_FALSE, align 4
  %38 = call i32 @usage(i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 3
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* %44)
  %46 = load i32, i32* @B_FALSE, align 4
  %47 = call i32 @usage(i32 %46)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %3, align 4
  %50 = icmp sgt i32 %49, 3
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @stderr, align 4
  %53 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* %53)
  %55 = load i32, i32* @B_FALSE, align 4
  %56 = call i32 @usage(i32 %55)
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i8**, i8*** %4, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 61)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  %70 = load i32, i32* @stderr, align 4
  %71 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* %71)
  %73 = load i32, i32* @B_FALSE, align 4
  %74 = call i32 @usage(i32 %73)
  br label %75

75:                                               ; preds = %69, %57
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  store i8 0, i8* %77, align 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %78, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sub nsw i32 %81, 2
  %83 = load i8**, i8*** %4, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 2
  %85 = load i32, i32* @B_TRUE, align 4
  %86 = load i32, i32* @set_callback, align 4
  %87 = call i32 @for_each_pool(i32 %82, i8** %84, i32 %85, i32* null, i32 %86, %struct.TYPE_3__* %5)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @for_each_pool(i32, i8**, i32, i32*, i32, %struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
