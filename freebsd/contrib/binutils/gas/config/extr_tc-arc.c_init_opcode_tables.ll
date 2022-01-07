; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_init_opcode_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arc.c_init_opcode_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@arc_suffix_hash = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"virtual memory exhausted\00", align 1
@stdoutput = common dso_local global i32 0, align 4
@bfd_arch_arc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not set architecture and machine\00", align 1
@target_big_endian = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@arc_suffixes_count = common dso_local global i32 0, align 4
@arc_suffixes = common dso_local global %struct.TYPE_3__* null, align 8
@arc_reg_names_count = common dso_local global i32 0, align 4
@arc_reg_names = common dso_local global %struct.TYPE_4__* null, align 8
@reg_section = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global i32 0, align 4
@cpu_tables_init_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_opcode_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_opcode_tables(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32* (...) @hash_new()
  store i32* %5, i32** @arc_suffix_hash, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @as_fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* @stdoutput, align 4
  %11 = load i32, i32* @bfd_arch_arc, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @bfd_set_arch_mach(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = call i32 @as_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @target_big_endian, align 4
  %20 = call i32 @arc_get_opcode_mach(i32 %18, i32 %19)
  %21 = call i32 @arc_opcode_init_tables(i32 %20)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %57, %17
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @arc_suffixes_count, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arc_suffixes, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %26
  %37 = load i32*, i32** @arc_suffix_hash, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arc_suffixes, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arc_suffixes, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = bitcast %struct.TYPE_3__* %47 to i8*
  %49 = call i32 @hash_insert(i32* %37, i8* %43, i8* %48)
  br label %50

50:                                               ; preds = %36, %26
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arc_suffixes, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %22

60:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %90, %60
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @arc_reg_names_count, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %61
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arc_reg_names, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @symbol_find(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %90

75:                                               ; preds = %65
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arc_reg_names, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @reg_section, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arc_reg_names, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = ptrtoint %struct.TYPE_4__* %86 to i32
  %88 = call i32 @symbol_create(i32 %81, i32 %82, i32 %87, i32* @zero_address_frag)
  %89 = call i32 @symbol_table_insert(i32 %88)
  br label %90

90:                                               ; preds = %75, %74
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %61

93:                                               ; preds = %61
  store i32 1, i32* @cpu_tables_init_p, align 4
  ret void
}

declare dso_local i32* @hash_new(...) #1

declare dso_local i32 @as_fatal(i8*) #1

declare dso_local i32 @bfd_set_arch_mach(i32, i32, i32) #1

declare dso_local i32 @as_warn(i8*) #1

declare dso_local i32 @arc_opcode_init_tables(i32) #1

declare dso_local i32 @arc_get_opcode_mach(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @hash_insert(i32*, i8*, i8*) #1

declare dso_local i64 @symbol_find(i32) #1

declare dso_local i32 @symbol_table_insert(i32) #1

declare dso_local i32 @symbol_create(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
