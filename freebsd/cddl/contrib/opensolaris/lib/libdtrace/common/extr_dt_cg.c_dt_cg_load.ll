; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@dt_cg_load.ops = internal constant [32 x i32] [i32 138, i32 137, i32 0, i32 136, i32 0, i32 0, i32 0, i32 135, i32 141, i32 140, i32 0, i32 139, i32 0, i32 0, i32 0, i32 135, i32 131, i32 130, i32 0, i32 129, i32 0, i32 0, i32 0, i32 128, i32 134, i32 133, i32 0, i32 132, i32 0, i32 0, i32 0, i32 128], align 16
@DT_NF_BITFIELD = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@NBBY = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"internal error -- cg cannot load size %ld when passed by value\0A\00", align 1
@DT_NF_SIGNED = common dso_local global i32 0, align 4
@DT_NF_USERLAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @dt_cg_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_cg_load(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DT_NF_BITFIELD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @ctf_type_encoding(i32* %16, i32 %17, %struct.TYPE_6__* %7)
  %19 = load i64, i64* @CTF_ERR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NBBY, align 4
  %25 = call i32 @P2ROUNDUP(i32 %23, i32 %24)
  %26 = load i32, i32* @NBBY, align 4
  %27 = sdiv i32 %25, %26
  %28 = call i32 @clp2(i32 %27)
  store i32 %28, i32* %8, align 4
  br label %33

29:                                               ; preds = %15, %3
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ctf_type_size(i32* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 8
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39, %36, %33
  %46 = load i32, i32* @D_UNKNOWN, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @xyerror(i32 %46, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DT_NF_SIGNED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, 8
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %59, %50
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DT_NF_USERLAND, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, 16
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* @dt_cg_load.ops, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  ret i32 %76
}

declare dso_local i64 @ctf_type_encoding(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @clp2(i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i32 @ctf_type_size(i32*, i32) #1

declare dso_local i32 @xyerror(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
