; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_record_one_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_record_one_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_set = type { %struct.reg_set*, i32 }

@reg_set_table_size = common dso_local global i32 0, align 4
@REG_SET_TABLE_SLOP = common dso_local global i32 0, align 4
@reg_set_table = common dso_local global %struct.reg_set** null, align 8
@reg_set_obstack = common dso_local global i32 0, align 4
@bytes_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @record_one_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_one_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.reg_set*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @reg_set_table_size, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @REG_SET_TABLE_SLOP, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call %struct.reg_set** @grealloc(%struct.reg_set** %14, i32 %18)
  store %struct.reg_set** %19, %struct.reg_set*** @reg_set_table, align 8
  %20 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %21 = load i32, i32* @reg_set_table_size, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %20, i64 %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @reg_set_table_size, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(%struct.reg_set** %23, i32 0, i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* @reg_set_table_size, align 4
  br label %32

32:                                               ; preds = %10, %2
  %33 = call %struct.reg_set* @obstack_alloc(i32* @reg_set_obstack, i32 16)
  store %struct.reg_set* %33, %struct.reg_set** %5, align 8
  %34 = load i32, i32* @bytes_used, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 16
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* @bytes_used, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @BLOCK_NUM(i32 %38)
  %40 = load %struct.reg_set*, %struct.reg_set** %5, align 8
  %41 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %42, i64 %44
  %46 = load %struct.reg_set*, %struct.reg_set** %45, align 8
  %47 = load %struct.reg_set*, %struct.reg_set** %5, align 8
  %48 = getelementptr inbounds %struct.reg_set, %struct.reg_set* %47, i32 0, i32 0
  store %struct.reg_set* %46, %struct.reg_set** %48, align 8
  %49 = load %struct.reg_set*, %struct.reg_set** %5, align 8
  %50 = load %struct.reg_set**, %struct.reg_set*** @reg_set_table, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.reg_set*, %struct.reg_set** %50, i64 %52
  store %struct.reg_set* %49, %struct.reg_set** %53, align 8
  ret void
}

declare dso_local %struct.reg_set** @grealloc(%struct.reg_set**, i32) #1

declare dso_local i32 @memset(%struct.reg_set**, i32, i32) #1

declare dso_local %struct.reg_set* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @BLOCK_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
