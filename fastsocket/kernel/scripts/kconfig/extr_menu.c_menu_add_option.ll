; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_add_option.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_menu.c_menu_add_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.property = type { i32 }

@P_DEFAULT = common dso_local global i32 0, align 4
@modules_sym = common dso_local global i32 0, align 4
@current_entry = common dso_local global %struct.TYPE_2__* null, align 8
@sym_defconfig_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"trying to redefine defconfig symbol\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_add_option(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.property*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %37 [
    i32 128, label %7
    i32 130, label %17
    i32 129, label %34
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @P_DEFAULT, align 4
  %9 = load i32, i32* @modules_sym, align 4
  %10 = call %struct.property* @prop_alloc(i32 %8, i32 %9)
  store %struct.property* %10, %struct.property** %5, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_entry, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @expr_alloc_symbol(i32 %13)
  %15 = load %struct.property*, %struct.property** %5, align 8
  %16 = getelementptr inbounds %struct.property, %struct.property* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load i32, i32* @sym_defconfig_list, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_entry, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @sym_defconfig_list, align 4
  br label %33

24:                                               ; preds = %17
  %25 = load i32, i32* @sym_defconfig_list, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_entry, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @zconf_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  br label %33

33:                                               ; preds = %32, %20
  br label %37

34:                                               ; preds = %2
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @prop_add_env(i8* %35)
  br label %37

37:                                               ; preds = %2, %34, %33, %7
  ret void
}

declare dso_local %struct.property* @prop_alloc(i32, i32) #1

declare dso_local i32 @expr_alloc_symbol(i32) #1

declare dso_local i32 @zconf_error(i8*) #1

declare dso_local i32 @prop_add_env(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
