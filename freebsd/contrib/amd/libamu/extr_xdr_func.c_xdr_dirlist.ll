; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xdr_func.c_xdr_dirlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xdr_func.c_xdr_dirlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@D_XDRTRACE = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"xdr_dirlist:\00", align 1
@xdr_entry = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_dirlist(i32* %0, %struct.TYPE_3__* %1) #0 {
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
  %11 = call i32 @plog(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = bitcast i32* %15 to i8**
  %17 = load i64, i64* @xdr_entry, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @xdr_pointer(i32* %13, i8** %16, i32 4, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %12
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @xdr_bool(i32* %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %29, %21
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @amuDebug(i32) #1

declare dso_local i32 @plog(i32, i8*) #1

declare dso_local i32 @xdr_pointer(i32*, i8**, i32, i32) #1

declare dso_local i32 @xdr_bool(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
