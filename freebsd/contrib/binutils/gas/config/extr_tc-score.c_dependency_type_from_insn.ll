; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_dependency_type_from_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_dependency_type_from_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_to_dependency = type { i32 }

@INSN_NAME_LEN = common dso_local global i32 0, align 4
@dependency_insn_hsh = common dso_local global i32 0, align 4
@D_all_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dependency_type_from_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dependency_type_from_insn(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.insn_to_dependency*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @INSN_NAME_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strcpy(i8* %11, i8* %12)
  %14 = load i32, i32* @dependency_insn_hsh, align 4
  %15 = call i64 @hash_find(i32 %14, i8* %11)
  %16 = inttoptr i64 %15 to %struct.insn_to_dependency*
  store %struct.insn_to_dependency* %16, %struct.insn_to_dependency** %6, align 8
  %17 = load %struct.insn_to_dependency*, %struct.insn_to_dependency** %6, align 8
  %18 = icmp ne %struct.insn_to_dependency* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.insn_to_dependency*, %struct.insn_to_dependency** %6, align 8
  %21 = getelementptr inbounds %struct.insn_to_dependency, %struct.insn_to_dependency* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @D_all_insn, align 4
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %26)
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @hash_find(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
