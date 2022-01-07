; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_needs_ovl_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_needs_ovl_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.spu_link_hash_table = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"setjmp\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.spu_link_hash_table*, i32)* @needs_ovl_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_ovl_stub(i8* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2, %struct.spu_link_hash_table* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.spu_link_hash_table*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store %struct.spu_link_hash_table* %3, %struct.spu_link_hash_table** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %10, align 8
  %13 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %6, align 4
  br label %88

18:                                               ; preds = %5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call %struct.TYPE_6__* @spu_elf_section_data(i32* %29)
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %21, %18
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %6, align 4
  br label %88

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 6
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 6
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 64
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %6, align 4
  br label %88

52:                                               ; preds = %44, %34
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call %struct.TYPE_6__* @spu_elf_section_data(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.spu_link_hash_table*, %struct.spu_link_hash_table** %10, align 8
  %62 = getelementptr inbounds %struct.spu_link_hash_table, %struct.spu_link_hash_table* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %6, align 4
  br label %88

67:                                               ; preds = %60, %52
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call %struct.TYPE_6__* @spu_elf_section_data(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call %struct.TYPE_6__* @spu_elf_section_data(i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %73, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %6, align 4
  br label %88

83:                                               ; preds = %67
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %83, %81, %65, %50, %32, %16
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_6__* @spu_elf_section_data(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
