; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_should_have_dwarf.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_should_have_dwarf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@SHT_SYMTAB = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot convert stripped objects\0A\00", align 1
@STT_FUNC = common dso_local global i64 0, align 8
@STT_TLS = common dso_local global i64 0, align 8
@STT_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Bbss.bss\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Ttbss.bss\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Ddata.data\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Ttdata.data\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Drodata.rodata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @should_have_dwarf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_have_dwarf(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i32, i32* @B_FALSE, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %27, %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @elf_nextscn(i32* %14, i32* %15)
  store i32* %16, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @gelf_getshdr(i32* %19, %struct.TYPE_6__* %6)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SHT_SYMTAB, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @B_TRUE, align 4
  store i32 %26, i32* %10, align 4
  br label %28

27:                                               ; preds = %18
  br label %13

28:                                               ; preds = %25, %13
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @terminate(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @elf_getdata(i32* %34, i32* null)
  store i32* %35, i32** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = udiv i64 %37, %39
  store i64 %40, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %41

41:                                               ; preds = %96, %33
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %99

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @gelf_getsym(i32* %46, i64 %47, %struct.TYPE_5__* %7)
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @GELF_ST_TYPE(i32 %50)
  %52 = load i64, i64* @STT_FUNC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @GELF_ST_TYPE(i32 %56)
  %58 = load i64, i64* @STT_TLS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @GELF_ST_TYPE(i32 %62)
  %64 = load i64, i64* @STT_OBJECT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %60, %54, %45
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @elf_strptr(i32* %67, i32 %69, i32 %71)
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %66
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i8*, i8** %11, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i8*, i8** %11, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @B_TRUE, align 4
  store i32 %93, i32* %2, align 4
  br label %101

94:                                               ; preds = %88, %84, %80, %76, %66
  br label %95

95:                                               ; preds = %94, %60
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %8, align 8
  br label %41

99:                                               ; preds = %41
  %100 = load i32, i32* @B_FALSE, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %92
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32 @gelf_getshdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @terminate(i8*) #1

declare dso_local i32* @elf_getdata(i32*, i32*) #1

declare dso_local i32 @gelf_getsym(i32*, i64, %struct.TYPE_5__*) #1

declare dso_local i64 @GELF_ST_TYPE(i32) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
