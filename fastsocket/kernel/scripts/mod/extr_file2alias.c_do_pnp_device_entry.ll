; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_pnp_device_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_pnp_device_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, i32 }
%struct.pnp_device_id = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"pnp\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"MODULE_ALIAS(\22pnp:d%s*\22);\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"MODULE_ALIAS(\22acpi*:%s:*\22);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.module*)* @do_pnp_device_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pnp_device_entry(i8* %0, i64 %1, %struct.module* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pnp_device_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [8 x i8], align 1
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  store i64 8, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = udiv i64 %14, 8
  %16 = sub i64 %15, 1
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.pnp_device_id*
  store %struct.pnp_device_id* %19, %struct.pnp_device_id** %9, align 8
  %20 = load %struct.module*, %struct.module** %6, align 8
  %21 = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @device_id_check(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %23, i64 8, i8* %24)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %64, %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %26
  %31 = load %struct.pnp_device_id*, %struct.pnp_device_id** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pnp_device_id, %struct.pnp_device_id* %31, i64 %33
  %35 = getelementptr inbounds %struct.pnp_device_id, %struct.pnp_device_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %11, align 8
  %38 = load %struct.module*, %struct.module** %6, align 8
  %39 = getelementptr inbounds %struct.module, %struct.module* %38, i32 0, i32 0
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @buf_printf(i32* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %56, %30
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 8
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call signext i8 @toupper(i8 signext %51)
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %54
  store i8 %52, i8* %55, align 1
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.module*, %struct.module** %6, align 8
  %61 = getelementptr inbounds %struct.module, %struct.module* %60, i32 0, i32 0
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %63 = call i32 @buf_printf(i32* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %26

67:                                               ; preds = %26
  ret void
}

declare dso_local i32 @device_id_check(i32, i8*, i64, i64, i8*) #1

declare dso_local i32 @buf_printf(i32*, i8*, i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
