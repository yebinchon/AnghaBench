; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_small_smb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_small_smb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32 }
%struct.smb_hdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cifs_tcon*, i8**)* @small_smb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @small_smb_init(i32 %0, i32 %1, %struct.cifs_tcon* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.cifs_tcon* %2, %struct.cifs_tcon** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @cifs_reconnect_tcon(%struct.cifs_tcon* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %42

18:                                               ; preds = %4
  %19 = call i8* (...) @cifs_small_buf_get()
  %20 = load i8**, i8*** %9, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i8**, i8*** %9, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %42

27:                                               ; preds = %18
  %28 = load i8**, i8*** %9, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.smb_hdr*
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @header_assemble(%struct.smb_hdr* %30, i32 %31, %struct.cifs_tcon* %32, i32 %33)
  %35 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %36 = icmp ne %struct.cifs_tcon* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %39 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %38, i32 0, i32 0
  %40 = call i32 @cifs_stats_inc(i32* %39)
  br label %41

41:                                               ; preds = %37, %27
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %24, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @cifs_reconnect_tcon(%struct.cifs_tcon*, i32) #1

declare dso_local i8* @cifs_small_buf_get(...) #1

declare dso_local i32 @header_assemble(%struct.smb_hdr*, i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
