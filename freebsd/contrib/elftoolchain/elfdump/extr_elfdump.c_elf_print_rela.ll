; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_rela.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i32 }
%struct.section = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.rel_entry = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@SOLARIS_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"\0ARelocation Section:  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"        type                          offset     addend  section        with respect to\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\0Arelocation with addend (%s):\0A\00", align 1
@SHT_RELA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"gelf_getrela failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*, %struct.section*, %struct.TYPE_8__*)* @elf_print_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_rela(%struct.elfdump* %0, %struct.section* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.elfdump*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.rel_entry, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %4, align 8
  store %struct.section* %1, %struct.section** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %10 = load %struct.elfdump*, %struct.elfdump** %4, align 8
  %11 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SOLARIS_FMT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.section*, %struct.section** %5, align 8
  %18 = getelementptr inbounds %struct.section, %struct.section* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.section*, %struct.section** %5, align 8
  %24 = getelementptr inbounds %struct.section, %struct.section* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @PRT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32, i32* @SHT_RELA, align 4
  %29 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %7, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.section*, %struct.section** %5, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.section*, %struct.section** %5, align 8
  %40 = call i32 @get_ent_count(%struct.section* %39, i32* %9)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  br label %79

43:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %76, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %7, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = call %struct.TYPE_9__* @gelf_getrela(%struct.TYPE_8__* %49, i32 %50, %struct.TYPE_9__* %52)
  %54 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %7, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = icmp ne %struct.TYPE_9__* %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = call i32 @elf_errmsg(i32 -1)
  %59 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %76

60:                                               ; preds = %48
  %61 = load %struct.elfdump*, %struct.elfdump** %4, align 8
  %62 = load %struct.section*, %struct.section** %5, align 8
  %63 = getelementptr inbounds %struct.section, %struct.section* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %7, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @GELF_R_SYM(i32 %68)
  %70 = call i32 @get_symbol_name(%struct.elfdump* %61, i32 %64, i32 %69)
  %71 = getelementptr inbounds %struct.rel_entry, %struct.rel_entry* %7, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.elfdump*, %struct.elfdump** %4, align 8
  %73 = load %struct.section*, %struct.section** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @elf_print_rel_entry(%struct.elfdump* %72, %struct.section* %73, i32 %74, %struct.rel_entry* %7)
  br label %76

76:                                               ; preds = %60, %57
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %44

79:                                               ; preds = %42, %44
  ret void
}

declare dso_local i32 @PRT(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

declare dso_local %struct.TYPE_9__* @gelf_getrela(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @get_symbol_name(%struct.elfdump*, i32, i32) #1

declare dso_local i32 @GELF_R_SYM(i32) #1

declare dso_local i32 @elf_print_rel_entry(%struct.elfdump*, %struct.section*, i32, %struct.rel_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
