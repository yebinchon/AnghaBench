; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_exec_set_section_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_exec_set_section_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.section_table*, %struct.section_table* }
%struct.section_table = type { i32, i32, i32 }

@exec_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@exec_bfd = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@SEC_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_set_section_offsets(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.section_table*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.section_table*, %struct.section_table** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @exec_ops, i32 0, i32 1), align 8
  store %struct.section_table* %9, %struct.section_table** %7, align 8
  br label %10

10:                                               ; preds = %84, %3
  %11 = load %struct.section_table*, %struct.section_table** %7, align 8
  %12 = load %struct.section_table*, %struct.section_table** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @exec_ops, i32 0, i32 0), align 8
  %13 = icmp ult %struct.section_table* %11, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %10
  %15 = load i32, i32* @exec_bfd, align 4
  %16 = load %struct.section_table*, %struct.section_table** %7, align 8
  %17 = getelementptr inbounds %struct.section_table, %struct.section_table* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfd_get_section_flags(i32 %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SEC_CODE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %14
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.section_table*, %struct.section_table** %7, align 8
  %27 = getelementptr inbounds %struct.section_table, %struct.section_table* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.section_table*, %struct.section_table** %7, align 8
  %34 = getelementptr inbounds %struct.section_table, %struct.section_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  br label %83

39:                                               ; preds = %14
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SEC_DATA, align 4
  %42 = load i32, i32* @SEC_LOAD, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.section_table*, %struct.section_table** %7, align 8
  %49 = getelementptr inbounds %struct.section_table, %struct.section_table* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.section_table*, %struct.section_table** %7, align 8
  %56 = getelementptr inbounds %struct.section_table, %struct.section_table* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  br label %82

61:                                               ; preds = %39
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SEC_ALLOC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.section_table*, %struct.section_table** %7, align 8
  %69 = getelementptr inbounds %struct.section_table, %struct.section_table* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.section_table*, %struct.section_table** %7, align 8
  %76 = getelementptr inbounds %struct.section_table, %struct.section_table* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  br label %81

81:                                               ; preds = %66, %61
  br label %82

82:                                               ; preds = %81, %46
  br label %83

83:                                               ; preds = %82, %24
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.section_table*, %struct.section_table** %7, align 8
  %86 = getelementptr inbounds %struct.section_table, %struct.section_table* %85, i32 1
  store %struct.section_table* %86, %struct.section_table** %7, align 8
  br label %10

87:                                               ; preds = %10
  ret void
}

declare dso_local i32 @bfd_get_section_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
