; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cache.c_cifs_fscache_super_check_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cache.c_cifs_fscache_super_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fscache_super_auxdata = type { i32 }
%struct.cifs_tcon = type { i32 }

@FSCACHE_CHECKAUX_OBSOLETE = common dso_local global i32 0, align 4
@FSCACHE_CHECKAUX_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @cifs_fscache_super_check_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_fscache_super_check_aux(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_fscache_super_auxdata, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cifs_tcon*
  store %struct.cifs_tcon* %11, %struct.cifs_tcon** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %16, i32* %4, align 4
  br label %31

17:                                               ; preds = %3
  %18 = call i32 @memset(%struct.cifs_fscache_super_auxdata* %8, i32 0, i32 4)
  %19 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %20 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.cifs_fscache_super_auxdata, %struct.cifs_fscache_super_auxdata* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @memcmp(i8* %23, %struct.cifs_fscache_super_auxdata* %8, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @FSCACHE_CHECKAUX_OKAY, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %27, %15
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.cifs_fscache_super_auxdata*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, %struct.cifs_fscache_super_auxdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
