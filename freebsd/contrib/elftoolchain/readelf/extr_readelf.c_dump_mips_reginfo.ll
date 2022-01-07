; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_reginfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_mips_reginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32 }
%struct.section = type { i8*, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"elf_rawdata failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\0ASection '%s' contains %d entries:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, %struct.section*)* @dump_mips_reginfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_mips_reginfo(%struct.readelf* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.readelf*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %8 = call i32 (...) @elf_errno()
  %9 = load %struct.section*, %struct.section** %4, align 8
  %10 = getelementptr inbounds %struct.section, %struct.section* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_3__* @elf_rawdata(i32 %11, i32* null)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = call i32 (...) @elf_errno()
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @elf_errmsg(i32 %19)
  %21 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  br label %48

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %48

29:                                               ; preds = %23
  %30 = load %struct.section*, %struct.section** %4, align 8
  %31 = call i32 @get_ent_count(%struct.section* %30, i32* %7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %48

34:                                               ; preds = %29
  %35 = load %struct.section*, %struct.section** %4, align 8
  %36 = getelementptr inbounds %struct.section, %struct.section* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %38)
  %40 = load %struct.readelf*, %struct.readelf** %3, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dump_mips_odk_reginfo(%struct.readelf* %40, i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %34, %33, %28, %22
  ret void
}

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.TYPE_3__* @elf_rawdata(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @get_ent_count(%struct.section*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @dump_mips_odk_reginfo(%struct.readelf*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
