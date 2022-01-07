; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_label_uberblocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_label_uberblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@ZDB_MAX_UB_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Uberblock[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @dump_label_uberblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_label_uberblocks(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %6, align 8
  %12 = load i32, i32* @ZDB_MAX_UB_HEADER_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %20, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %46, %2
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = call i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_4__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_4__* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @uberblock_verify(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %46

40:                                               ; preds = %26
  %41 = load i32, i32* @ZDB_MAX_UB_HEADER_SIZE, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @snprintf(i8* %15, i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @dump_uberblock(i32* %44, i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %40, %39
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_4__*) #2

declare dso_local i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_4__*, i32) #2

declare dso_local i64 @uberblock_verify(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @dump_uberblock(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
