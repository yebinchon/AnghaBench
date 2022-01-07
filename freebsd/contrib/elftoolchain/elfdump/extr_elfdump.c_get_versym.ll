; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_get_versym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_get_versym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, %struct.section* }
%struct.section = type { i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i32* }

@SHT_SUNW_versym = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*, i32, i32**, i32*)* @get_versym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_versym(%struct.elfdump* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.elfdump*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.section*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  store %struct.section* null, %struct.section** %9, align 8
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %39, %4
  %14 = load i64, i64* %11, align 8
  %15 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %16 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %21 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %20, i32 0, i32 1
  %22 = load %struct.section*, %struct.section** %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds %struct.section, %struct.section* %22, i64 %23
  store %struct.section* %24, %struct.section** %9, align 8
  %25 = load %struct.section*, %struct.section** %9, align 8
  %26 = getelementptr inbounds %struct.section, %struct.section* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SHT_SUNW_versym, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load %struct.section*, %struct.section** %9, align 8
  %32 = getelementptr inbounds %struct.section, %struct.section* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %42

38:                                               ; preds = %30, %19
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %13

42:                                               ; preds = %37, %13
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %45 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32**, i32*** %7, align 8
  store i32* null, i32** %49, align 8
  br label %87

50:                                               ; preds = %42
  %51 = call i32 (...) @elf_errno()
  %52 = load %struct.section*, %struct.section** %9, align 8
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_3__* @elf_getdata(i32 %54, i32* null)
  store %struct.TYPE_3__* %55, %struct.TYPE_3__** %10, align 8
  %56 = icmp eq %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = call i32 (...) @elf_errno()
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @elf_errmsg(i32 %62)
  %64 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32**, i32*** %7, align 8
  store i32* null, i32** %66, align 8
  br label %87

67:                                               ; preds = %50
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32**, i32*** %7, align 8
  store i32* %70, i32** %71, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.section*, %struct.section** %9, align 8
  %76 = getelementptr inbounds %struct.section, %struct.section* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.section*, %struct.section** %9, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @get_ent_count(%struct.section* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %67
  %86 = load i32*, i32** %8, align 8
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %48, %65, %85, %67
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_3__* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
