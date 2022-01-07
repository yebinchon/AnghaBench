; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_length_unit_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_write_length_unit_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_desc = type { %struct.attr_value*, %struct.TYPE_2__* }
%struct.attr_value = type { i32, %struct.insn_ent*, %struct.attr_value* }
%struct.insn_ent = type { %struct.insn_ent* }
%struct.TYPE_2__ = type { i32 }

@length_str = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"const int length_unit_log = %u;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_length_unit_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_length_unit_log() #0 {
  %1 = alloca %struct.attr_desc*, align 8
  %2 = alloca %struct.attr_value*, align 8
  %3 = alloca %struct.insn_ent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call %struct.attr_desc* @find_attr(i32* @length_str, i32 0)
  store %struct.attr_desc* %7, %struct.attr_desc** %1, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.attr_desc*, %struct.attr_desc** %1, align 8
  %9 = icmp eq %struct.attr_desc* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %68

11:                                               ; preds = %0
  %12 = load %struct.attr_desc*, %struct.attr_desc** %1, align 8
  %13 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @or_attr_value(i32 %16, i32* %6)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.attr_desc*, %struct.attr_desc** %1, align 8
  %19 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %18, i32 0, i32 0
  %20 = load %struct.attr_value*, %struct.attr_value** %19, align 8
  store %struct.attr_value* %20, %struct.attr_value** %2, align 8
  br label %21

21:                                               ; preds = %43, %11
  %22 = load %struct.attr_value*, %struct.attr_value** %2, align 8
  %23 = icmp ne %struct.attr_value* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load %struct.attr_value*, %struct.attr_value** %2, align 8
  %26 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %25, i32 0, i32 1
  %27 = load %struct.insn_ent*, %struct.insn_ent** %26, align 8
  store %struct.insn_ent* %27, %struct.insn_ent** %3, align 8
  br label %28

28:                                               ; preds = %38, %24
  %29 = load %struct.insn_ent*, %struct.insn_ent** %3, align 8
  %30 = icmp ne %struct.insn_ent* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.attr_value*, %struct.attr_value** %2, align 8
  %33 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @or_attr_value(i32 %34, i32* %6)
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %31
  %39 = load %struct.insn_ent*, %struct.insn_ent** %3, align 8
  %40 = getelementptr inbounds %struct.insn_ent, %struct.insn_ent* %39, i32 0, i32 0
  %41 = load %struct.insn_ent*, %struct.insn_ent** %40, align 8
  store %struct.insn_ent* %41, %struct.insn_ent** %3, align 8
  br label %28

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.attr_value*, %struct.attr_value** %2, align 8
  %45 = getelementptr inbounds %struct.attr_value, %struct.attr_value* %44, i32 0, i32 2
  %46 = load %struct.attr_value*, %struct.attr_value** %45, align 8
  store %struct.attr_value* %46, %struct.attr_value** %2, align 8
  br label %21

47:                                               ; preds = %21
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %65

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = xor i32 %52, -1
  store i32 %53, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %61, %51
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = lshr i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %54

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %50
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %10
  ret void
}

declare dso_local %struct.attr_desc* @find_attr(i32*, i32) #1

declare dso_local i32 @or_attr_value(i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
