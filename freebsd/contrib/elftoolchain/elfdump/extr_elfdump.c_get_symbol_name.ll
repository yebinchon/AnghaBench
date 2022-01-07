; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_get_symbol_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_get_symbol_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i64, i32, %struct.section* }
%struct.section = type { i64, i8*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@get_symbol_name.sname = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@SHT_DYNSYM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"elf_getdata failed: %s\00", align 1
@STT_SECTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%s (section)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.elfdump*, i64, i32)* @get_symbol_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_symbol_name(%struct.elfdump* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elfdump*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.section*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %15 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %97

19:                                               ; preds = %3
  %20 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %21 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %20, i32 0, i32 2
  %22 = load %struct.section*, %struct.section** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.section, %struct.section* %22, i64 %23
  store %struct.section* %24, %struct.section** %8, align 8
  %25 = load %struct.section*, %struct.section** %8, align 8
  %26 = getelementptr inbounds %struct.section, %struct.section* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SHT_SYMTAB, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.section*, %struct.section** %8, align 8
  %32 = getelementptr inbounds %struct.section, %struct.section* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SHT_DYNSYM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %97

37:                                               ; preds = %30, %19
  %38 = call i32 (...) @elf_errno()
  %39 = load %struct.section*, %struct.section** %8, align 8
  %40 = getelementptr inbounds %struct.section, %struct.section* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @elf_getdata(i32 %41, i32* null)
  store i32* %42, i32** %11, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = call i32 (...) @elf_errno()
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @elf_errmsg(i32 %49)
  %51 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %97

53:                                               ; preds = %37
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.TYPE_4__* @gelf_getsym(i32* %54, i32 %55, %struct.TYPE_4__* %10)
  %57 = icmp ne %struct.TYPE_4__* %56, %10
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %97

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @GELF_ST_TYPE(i32 %61)
  %63 = load i64, i64* @STT_SECTION, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %69 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %74 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %73, i32 0, i32 2
  %75 = load %struct.section*, %struct.section** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.section, %struct.section* %75, i64 %77
  %79 = getelementptr inbounds %struct.section, %struct.section* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_symbol_name.sname, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @get_symbol_name.sname, i64 0, i64 0), i8** %4, align 8
  br label %97

82:                                               ; preds = %65
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %97

83:                                               ; preds = %59
  %84 = load %struct.elfdump*, %struct.elfdump** %5, align 8
  %85 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.section*, %struct.section** %8, align 8
  %88 = getelementptr inbounds %struct.section, %struct.section* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i8* @elf_strptr(i32 %86, i32 %89, i32 %91)
  store i8* %92, i8** %9, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %97

95:                                               ; preds = %83
  %96 = load i8*, i8** %9, align 8
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %95, %94, %82, %72, %58, %52, %36, %18
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32* @elf_getdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local %struct.TYPE_4__* @gelf_getsym(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @GELF_ST_TYPE(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @elf_strptr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
