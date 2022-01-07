; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_die_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_die_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.dieinfo = type { i64, i64, i64, i32* }

@current_objfile = common dso_local global i32 0, align 4
@FT_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.dieinfo*)* @decode_die_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @decode_die_type(%struct.dieinfo* %0) #0 {
  %2 = alloca %struct.dieinfo*, align 8
  %3 = alloca %struct.type*, align 8
  store %struct.dieinfo* %0, %struct.dieinfo** %2, align 8
  store %struct.type* null, %struct.type** %3, align 8
  %4 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %5 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %10 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call %struct.type* @decode_fund_type(i64 %11)
  store %struct.type* %12, %struct.type** %3, align 8
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %15 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %20 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call %struct.type* @decode_mod_fund_type(i32* %21)
  store %struct.type* %22, %struct.type** %3, align 8
  br label %57

23:                                               ; preds = %13
  %24 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %25 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %30 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.type* @lookup_utype(i64 %31)
  store %struct.type* %32, %struct.type** %3, align 8
  %33 = load %struct.type*, %struct.type** %3, align 8
  %34 = icmp eq %struct.type* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %37 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.type* @alloc_utype(i64 %38, i32* null)
  store %struct.type* %39, %struct.type** %3, align 8
  br label %40

40:                                               ; preds = %35, %28
  br label %56

41:                                               ; preds = %23
  %42 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %43 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.dieinfo*, %struct.dieinfo** %2, align 8
  %48 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.type* @decode_mod_u_d_type(i64 %49)
  store %struct.type* %50, %struct.type** %3, align 8
  br label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @current_objfile, align 4
  %53 = load i32, i32* @FT_VOID, align 4
  %54 = call %struct.type* @dwarf_fundamental_type(i32 %52, i32 %53)
  store %struct.type* %54, %struct.type** %3, align 8
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %18
  br label %58

58:                                               ; preds = %57, %8
  %59 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %59
}

declare dso_local %struct.type* @decode_fund_type(i64) #1

declare dso_local %struct.type* @decode_mod_fund_type(i32*) #1

declare dso_local %struct.type* @lookup_utype(i64) #1

declare dso_local %struct.type* @alloc_utype(i64, i32*) #1

declare dso_local %struct.type* @decode_mod_u_d_type(i64) #1

declare dso_local %struct.type* @dwarf_fundamental_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
