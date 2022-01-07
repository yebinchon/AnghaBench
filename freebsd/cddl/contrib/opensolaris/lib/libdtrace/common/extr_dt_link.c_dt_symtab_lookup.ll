; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_link.c_dt_symtab_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_link.c_dt_symtab_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }

@STT_FUNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i64, i64, %struct.TYPE_8__*, i32, i32*)* @dt_symtab_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_symtab_lookup(%struct.TYPE_9__* %0, i32 %1, i32 %2, i64 %3, i64 %4, %struct.TYPE_8__* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %21, align 4
  br label %23

23:                                               ; preds = %88, %8
  %24 = load i32, i32* %21, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = load i32, i32* %21, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %31 = call i32* @gelf_getsym(%struct.TYPE_9__* %28, i32 %29, %struct.TYPE_8__* %30)
  %32 = icmp ne i32* %31, null
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi i1 [ false, %23 ], [ %32, %27 ]
  br i1 %34, label %35, label %91

35:                                               ; preds = %33
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @GELF_ST_TYPE(i32 %38)
  %40 = load i64, i64* @STT_FUNC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %18, align 8
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load i32*, i32** %17, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32* @elf_getscn(i32* %49, i64 %52)
  store i32* %53, i32** %19, align 8
  %54 = load i32*, i32** %19, align 8
  %55 = call %struct.TYPE_9__* @elf_rawdata(i32* %54, i32* null)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %20, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = load i64, i64* %18, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = bitcast i8* %61 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %18, align 8
  br label %64

64:                                               ; preds = %48, %42
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %14, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67, %64
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %13, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %79, %82
  %84 = icmp ult i64 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %92

86:                                               ; preds = %77, %73, %67
  br label %87

87:                                               ; preds = %86, %35
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  br label %23

91:                                               ; preds = %33
  store i32 -1, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %85
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32* @gelf_getsym(%struct.TYPE_9__*, i32, %struct.TYPE_8__*) #1

declare dso_local i64 @GELF_ST_TYPE(i32) #1

declare dso_local i32* @elf_getscn(i32*, i64) #1

declare dso_local %struct.TYPE_9__* @elf_rawdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
