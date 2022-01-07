; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_reg_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_reg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_entry = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NTA_HASINDEX = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @arm_reg_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_reg_parse(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.reg_entry*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = call %struct.reg_entry* @arm_reg_parse_multi(i8** %11)
  store %struct.reg_entry* %12, %struct.reg_entry** %7, align 8
  %13 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %14 = icmp ne %struct.reg_entry* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %17 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %22 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NTA_HASINDEX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %20, %15, %2
  %32 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %33 = icmp ne %struct.reg_entry* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %36 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %42 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %34, %31
  %45 = load i8**, i8*** %4, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.reg_entry*, %struct.reg_entry** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @arm_reg_alt_syntax(i8** %45, i8* %46, %struct.reg_entry* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @FAIL, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %44
  %55 = load i8*, i8** %6, align 8
  %56 = load i8**, i8*** %4, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* @FAIL, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %52, %40, %29
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.reg_entry* @arm_reg_parse_multi(i8**) #1

declare dso_local i32 @arm_reg_alt_syntax(i8**, i8*, %struct.reg_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
