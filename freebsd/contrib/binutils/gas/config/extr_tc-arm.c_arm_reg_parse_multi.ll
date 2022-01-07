; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_reg_parse_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_reg_parse_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_entry = type { i32 }

@arm_reg_hsh = common dso_local global i32 0, align 4
@OPTIONAL_REGISTER_PREFIX = common dso_local global i8 0, align 1
@REGISTER_PREFIX = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reg_entry* (i8**)* @arm_reg_parse_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reg_entry* @arm_reg_parse_multi(i8** %0) #0 {
  %2 = alloca %struct.reg_entry*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.reg_entry*, align 8
  store i8** %0, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = call i64 @ISALPHA(i8 signext %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i32 @is_name_beginner(i8 signext %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store %struct.reg_entry* null, %struct.reg_entry** %2, align 8
  br label %59

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @ISALPHA(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @ISDIGIT(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 95
  br label %39

39:                                               ; preds = %34, %29, %24
  %40 = phi i1 [ true, %29 ], [ true, %24 ], [ %38, %34 ]
  br i1 %40, label %21, label %41

41:                                               ; preds = %39
  %42 = load i32, i32* @arm_reg_hsh, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @hash_find_n(i32 %42, i8* %43, i32 %49)
  %51 = inttoptr i64 %50 to %struct.reg_entry*
  store %struct.reg_entry* %51, %struct.reg_entry** %6, align 8
  %52 = load %struct.reg_entry*, %struct.reg_entry** %6, align 8
  %53 = icmp ne %struct.reg_entry* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  store %struct.reg_entry* null, %struct.reg_entry** %2, align 8
  br label %59

55:                                               ; preds = %41
  %56 = load i8*, i8** %5, align 8
  %57 = load i8**, i8*** %3, align 8
  store i8* %56, i8** %57, align 8
  %58 = load %struct.reg_entry*, %struct.reg_entry** %6, align 8
  store %struct.reg_entry* %58, %struct.reg_entry** %2, align 8
  br label %59

59:                                               ; preds = %55, %54, %19
  %60 = load %struct.reg_entry*, %struct.reg_entry** %2, align 8
  ret %struct.reg_entry* %60
}

declare dso_local i64 @ISALPHA(i8 signext) #1

declare dso_local i32 @is_name_beginner(i8 signext) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

declare dso_local i64 @hash_find_n(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
