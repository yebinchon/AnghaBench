; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_typed_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_typed_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s:c=e%s,%ld\00", align 1
@N_LSYM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @stab_typed_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_typed_constant(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stab_write_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.stab_write_handle*
  store %struct.stab_write_handle* %12, %struct.stab_write_handle** %8, align 8
  %13 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %14 = call i8* @stab_pop_type(%struct.stab_write_handle* %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %16, %18
  %20 = add nsw i64 %19, 20
  %21 = call i64 @xmalloc(i64 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25, i64 %26)
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load %struct.stab_write_handle*, %struct.stab_write_handle** %8, align 8
  %31 = load i32, i32* @N_LSYM, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @stab_write_symbol(%struct.stab_write_handle* %30, i32 %31, i32 0, i32 0, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %3
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i8* @stab_pop_type(%struct.stab_write_handle*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stab_write_symbol(%struct.stab_write_handle*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
