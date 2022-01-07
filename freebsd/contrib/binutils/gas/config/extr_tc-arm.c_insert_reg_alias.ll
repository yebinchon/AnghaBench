; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_insert_reg_alias.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_insert_reg_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_entry = type { i32, i32, i8*, i32*, i64 }

@arm_reg_hsh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"ignoring attempt to redefine built-in register '%s'\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ignoring redefinition of register alias '%s'\00", align 1
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reg_entry* (i8*, i32, i32)* @insert_reg_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reg_entry* @insert_reg_alias(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.reg_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.reg_entry*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @arm_reg_hsh, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.reg_entry* @hash_find(i32 %10, i8* %11)
  store %struct.reg_entry* %12, %struct.reg_entry** %8, align 8
  %13 = icmp ne %struct.reg_entry* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %16 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @as_warn(i32 %20, i8* %21)
  br label %40

23:                                               ; preds = %14
  %24 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %25 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %31 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %23
  %36 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @as_warn(i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %19
  store %struct.reg_entry* null, %struct.reg_entry** %4, align 8
  br label %69

41:                                               ; preds = %3
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @xstrdup(i8* %42)
  store i8* %43, i8** %9, align 8
  %44 = call %struct.reg_entry* @xmalloc(i32 32)
  store %struct.reg_entry* %44, %struct.reg_entry** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %47 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %50 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %53 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* @FALSE, align 8
  %55 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %56 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %58 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* @arm_reg_hsh, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  %62 = ptrtoint %struct.reg_entry* %61 to i32
  %63 = call i64 @hash_insert(i32 %59, i8* %60, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %41
  %66 = call i32 (...) @abort() #3
  unreachable

67:                                               ; preds = %41
  %68 = load %struct.reg_entry*, %struct.reg_entry** %8, align 8
  store %struct.reg_entry* %68, %struct.reg_entry** %4, align 8
  br label %69

69:                                               ; preds = %67, %40
  %70 = load %struct.reg_entry*, %struct.reg_entry** %4, align 8
  ret %struct.reg_entry* %70
}

declare dso_local %struct.reg_entry* @hash_find(i32, i8*) #1

declare dso_local i32 @as_warn(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.reg_entry* @xmalloc(i32) #1

declare dso_local i64 @hash_insert(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
