; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_insert_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_insert_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_entry = type { i32 }
%struct.hash_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reg_entry*, %struct.hash_control*)* @insert_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_reg(%struct.reg_entry* %0, %struct.hash_control* %1) #0 {
  %3 = alloca %struct.reg_entry*, align 8
  %4 = alloca %struct.hash_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.reg_entry* %0, %struct.reg_entry** %3, align 8
  store %struct.hash_control* %1, %struct.hash_control** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.reg_entry*, %struct.reg_entry** %3, align 8
  %10 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strlen(i32 %11)
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @xmalloc(i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @xmalloc(i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load %struct.reg_entry*, %struct.reg_entry** %3, align 8
  %23 = getelementptr inbounds %struct.reg_entry, %struct.reg_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcpy(i8* %21, i32 %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %44, %2
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call signext i8 @TOUPPER(i8 signext %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %39, i8* %43, align 1
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.hash_control*, %struct.hash_control** %4, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.reg_entry*, %struct.reg_entry** %3, align 8
  %55 = bitcast %struct.reg_entry* %54 to i8*
  %56 = call i32 @hash_insert(%struct.hash_control* %52, i8* %53, i8* %55)
  %57 = load %struct.hash_control*, %struct.hash_control** %4, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.reg_entry*, %struct.reg_entry** %3, align 8
  %60 = bitcast %struct.reg_entry* %59 to i8*
  %61 = call i32 @hash_insert(%struct.hash_control* %57, i8* %58, i8* %60)
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

declare dso_local i32 @hash_insert(%struct.hash_control*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
