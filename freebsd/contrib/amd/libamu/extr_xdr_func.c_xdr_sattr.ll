; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xdr_func.c_xdr_sattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xdr_func.c_xdr_sattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@D_XDRTRACE = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"xdr_sattr:\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_sattr(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i32, i32* @D_XDRTRACE, align 4
  %7 = call i64 @amuDebug(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @XLOG_DEBUG, align 4
  %11 = call i32 @plog(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  %16 = call i32 @xdr_u_int(i32* %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %62

20:                                               ; preds = %12
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = call i32 @xdr_u_int(i32* %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %20
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = call i32 @xdr_u_int(i32* %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %62

36:                                               ; preds = %28
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = call i32 @xdr_u_int(i32* %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %36
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = call i32 @xdr_nfstime(i32* %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %62

52:                                               ; preds = %44
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @xdr_nfstime(i32* %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %58, %50, %42, %34, %26, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @amuDebug(i32) #1

declare dso_local i32 @plog(i32, i8*) #1

declare dso_local i32 @xdr_u_int(i32*, i32*) #1

declare dso_local i32 @xdr_nfstime(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
