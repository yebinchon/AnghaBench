; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_ptrsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_ptrsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }

@CTF_K_POINTER = common dso_local global i64 0, align 8
@CTF_K_ARRAY = common dso_local global i64 0, align 8
@yypcb = common dso_local global %struct.TYPE_10__* null, align 8
@EDT_CTF = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32*, i64, i32)* @dt_cg_ptrsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_cg_ptrsize(%struct.TYPE_8__* %0, i32* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ctf_type_resolve(i32* %21, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i64 @ctf_type_kind(i32* %26, i32 %27)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @CTF_K_POINTER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %5
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* @CTF_K_ARRAY, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %5
  %37 = phi i1 [ true, %5 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* @CTF_K_ARRAY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @ctf_array_info(i32* %44, i32 %45, %struct.TYPE_9__* %12)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @ctf_errno(i32* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yypcb, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @yypcb, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EDT_CTF, align 4
  %59 = call i32 @longjmp(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %48, %43
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  br label %67

63:                                               ; preds = %36
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ctf_type_reference(i32* %64, i32 %65)
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @ctf_type_size(i32* %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %93

73:                                               ; preds = %67
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @dt_regset_alloc(i32* %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @dt_cg_setx(i32* %76, i32 %77, i32 %78)
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @DIF_INSTR_FMT(i64 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @DT_LBL_NONE, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @dt_cg_node_alloc(i32 %86, i32 %87)
  %89 = call i32 @dt_irlist_append(i32* %85, i32 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @dt_regset_free(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i64 @ctf_type_kind(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ctf_array_info(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ctf_errno(i32*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @ctf_type_reference(i32*, i32) #1

declare dso_local i32 @ctf_type_size(i32*, i32) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i32) #1

declare dso_local i32 @DIF_INSTR_FMT(i64, i32, i32, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
