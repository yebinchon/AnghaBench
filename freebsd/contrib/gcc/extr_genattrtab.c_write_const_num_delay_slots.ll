; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_const_num_delay_slots.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_const_num_delay_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_desc = type { %struct.attr_value* }
%struct.attr_value = type { i32, i32, %struct.attr_value* }

@num_delay_slots_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"int\0Aconst_num_delay_slots (rtx insn)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"  switch (recog_memoized (insn))\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@length_used = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"    default:\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"      return 1;\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"    }\0A}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_const_num_delay_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_const_num_delay_slots() #0 {
  %1 = alloca %struct.attr_desc*, align 8
  %2 = alloca %struct.attr_value*, align 8
  %3 = call %struct.attr_desc* @find_attr(i32* @num_delay_slots_str, i32 0)
  store %struct.attr_desc* %3, %struct.attr_desc** %1, align 8
  %4 = load %struct.attr_desc*, %struct.attr_desc** %1, align 8
  %5 = icmp ne %struct.attr_desc* %4, null
  br i1 %5, label %6, label %38

6:                                                ; preds = %0
  %7 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %11 = load %struct.attr_desc*, %struct.attr_desc** %1, align 8
  %12 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %11, i32 0, i32 0
  %13 = load %struct.attr_value*, %struct.attr_value** %12, align 8
  store %struct.attr_value* %13, %struct.attr_value** %2, align 8
  br label %14

14:                                               ; preds = %30, %6
  %15 = load %struct.attr_value*, %struct.attr_value** %2, align 8
  %16 = icmp ne %struct.attr_value* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  store i64 0, i64* @length_used, align 8
  %18 = load %struct.attr_value*, %struct.attr_value** %2, align 8
  %19 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @walk_attr_value(i32 %20)
  %22 = load i64, i64* @length_used, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.attr_value*, %struct.attr_value** %2, align 8
  %26 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @write_insn_cases(i32 %27, i32 4)
  br label %29

29:                                               ; preds = %24, %17
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.attr_value*, %struct.attr_value** %2, align 8
  %32 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %31, i32 0, i32 2
  %33 = load %struct.attr_value*, %struct.attr_value** %32, align 8
  store %struct.attr_value* %33, %struct.attr_value** %2, align 8
  br label %14

34:                                               ; preds = %14
  %35 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %37 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %0
  ret void
}

declare dso_local %struct.attr_desc* @find_attr(i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @walk_attr_value(i32) #1

declare dso_local i32 @write_insn_cases(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
