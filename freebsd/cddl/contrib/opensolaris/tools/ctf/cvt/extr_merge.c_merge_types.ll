; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_merge.c_merge_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_merge.c_merge_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32**, i32*, i32** }

@TDATA_LAYOUT_HASH_SIZE = common dso_local global i32 0, align 4
@tdesc_layouthash = common dso_local global i32 0, align 4
@tdesc_layoutcmp = common dso_local global i32 0, align 4
@merge_type_cb = common dso_local global i32 0, align 4
@add_tdtba_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"add_tdtba_cb added %d items\0A\00", align 1
@add_iitba_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"add_iitba_cb added %d items\0A\00", align 1
@add_tdtbr_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"add_tdtbr_cb added %d items\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Couldn't remap all nodes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @merge_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_types(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  store i32** %5, i32*** %10, align 8
  %11 = load i32, i32* @TDATA_LAYOUT_HASH_SIZE, align 4
  %12 = load i32, i32* @tdesc_layouthash, align 4
  %13 = load i32, i32* @tdesc_layoutcmp, align 4
  %14 = call i32* @hash_new(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i32** %6, i32*** %18, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @merge_type_cb, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = call i32 @hash_iter(i32* %19, i32 %20, %struct.TYPE_6__* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @add_tdtba_cb, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = call i32 @hash_iter(i32* %25, i32 %26, %struct.TYPE_6__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @debug(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @add_iitba_cb, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = call i32 @list_iter(i32* %34, i32 %35, %struct.TYPE_6__* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @debug(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @list_count(i32* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @hash_count(i32* %49)
  %51 = icmp eq i64 %50, 0
  br label %52

52:                                               ; preds = %46, %2
  %53 = phi i1 [ false, %2 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @add_tdtbr_cb, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = call i32 @list_iter(i32* %59, i32 %60, %struct.TYPE_6__* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @debug(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @list_count(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %52
  %72 = call i32 @aborterr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %52
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = call i32 @redir_mstr_fwds(%struct.TYPE_6__* %82)
  br label %84

84:                                               ; preds = %81, %73
  ret void
}

declare dso_local i32* @hash_new(i32, i32, i32) #1

declare dso_local i32 @hash_iter(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @list_iter(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @list_count(i32*) #1

declare dso_local i64 @hash_count(i32*) #1

declare dso_local i32 @aborterr(i8*) #1

declare dso_local i32 @redir_mstr_fwds(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
