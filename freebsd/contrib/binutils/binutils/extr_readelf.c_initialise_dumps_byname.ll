; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_initialise_dumps_byname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_initialise_dumps_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_list_entry = type { i32, i32, %struct.dump_list_entry* }
%struct.TYPE_2__ = type { i32 }

@dump_sects_byname = common dso_local global %struct.dump_list_entry* null, align 8
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@section_headers = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Section '%s' was not dumped because it does not exist!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialise_dumps_byname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialise_dumps_byname() #0 {
  %1 = alloca %struct.dump_list_entry*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.dump_list_entry*, %struct.dump_list_entry** @dump_sects_byname, align 8
  store %struct.dump_list_entry* %4, %struct.dump_list_entry** %1, align 8
  br label %5

5:                                                ; preds = %44, %0
  %6 = load %struct.dump_list_entry*, %struct.dump_list_entry** %1, align 8
  %7 = icmp ne %struct.dump_list_entry* %6, null
  br i1 %7, label %8, label %48

8:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %31, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i64, i64* @section_headers, align 8
  %15 = load i32, i32* %2, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @SECTION_NAME(i64 %17)
  %19 = load %struct.dump_list_entry*, %struct.dump_list_entry** %1, align 8
  %20 = getelementptr inbounds %struct.dump_list_entry, %struct.dump_list_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @streq(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.dump_list_entry*, %struct.dump_list_entry** %1, align 8
  %27 = getelementptr inbounds %struct.dump_list_entry, %struct.dump_list_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @request_dump(i32 %25, i32 %28)
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %9

34:                                               ; preds = %9
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.dump_list_entry*, %struct.dump_list_entry** %1, align 8
  %40 = getelementptr inbounds %struct.dump_list_entry, %struct.dump_list_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @warn(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %34
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.dump_list_entry*, %struct.dump_list_entry** %1, align 8
  %46 = getelementptr inbounds %struct.dump_list_entry, %struct.dump_list_entry* %45, i32 0, i32 2
  %47 = load %struct.dump_list_entry*, %struct.dump_list_entry** %46, align 8
  store %struct.dump_list_entry* %47, %struct.dump_list_entry** %1, align 8
  br label %5

48:                                               ; preds = %5
  ret void
}

declare dso_local i64 @streq(i32, i32) #1

declare dso_local i32 @SECTION_NAME(i64) #1

declare dso_local i32 @request_dump(i32, i32) #1

declare dso_local i32 @warn(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
