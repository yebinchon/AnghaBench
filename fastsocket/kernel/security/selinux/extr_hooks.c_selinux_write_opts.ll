; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_write_opts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_write_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.security_mnt_opts = type { i32, i8**, i32* }

@CONTEXT_STR = common dso_local global i8* null, align 8
@FSCONTEXT_STR = common dso_local global i8* null, align 8
@ROOTCONTEXT_STR = common dso_local global i8* null, align 8
@DEFCONTEXT_STR = common dso_local global i8* null, align 8
@LABELSUPP_STR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.security_mnt_opts*)* @selinux_write_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selinux_write_opts(%struct.seq_file* %0, %struct.security_mnt_opts* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.security_mnt_opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.security_mnt_opts* %1, %struct.security_mnt_opts** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %84, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %4, align 8
  %11 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %8
  %15 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %4, align 8
  %16 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %4, align 8
  %25 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 44)
  store i8* %31, i8** %7, align 8
  br label %33

32:                                               ; preds = %14
  store i8* null, i8** %7, align 8
  br label %33

33:                                               ; preds = %32, %23
  %34 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %4, align 8
  %35 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %55 [
    i32 132, label %41
    i32 130, label %43
    i32 129, label %45
    i32 131, label %47
    i32 128, label %49
  ]

41:                                               ; preds = %33
  %42 = load i8*, i8** @CONTEXT_STR, align 8
  store i8* %42, i8** %6, align 8
  br label %57

43:                                               ; preds = %33
  %44 = load i8*, i8** @FSCONTEXT_STR, align 8
  store i8* %44, i8** %6, align 8
  br label %57

45:                                               ; preds = %33
  %46 = load i8*, i8** @ROOTCONTEXT_STR, align 8
  store i8* %46, i8** %6, align 8
  br label %57

47:                                               ; preds = %33
  %48 = load i8*, i8** @DEFCONTEXT_STR, align 8
  store i8* %48, i8** %6, align 8
  br label %57

49:                                               ; preds = %33
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = call i32 @seq_putc(%struct.seq_file* %50, i8 signext 44)
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load i8*, i8** @LABELSUPP_STR, align 8
  %54 = call i32 @seq_puts(%struct.seq_file* %52, i8* %53)
  br label %84

55:                                               ; preds = %33
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %55, %47, %45, %43, %41
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = call i32 @seq_putc(%struct.seq_file* %58, i8 signext 44)
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @seq_puts(%struct.seq_file* %60, i8* %61)
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = call i32 @seq_putc(%struct.seq_file* %66, i8 signext 34)
  br label %68

68:                                               ; preds = %65, %57
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.security_mnt_opts*, %struct.security_mnt_opts** %4, align 8
  %71 = getelementptr inbounds %struct.security_mnt_opts, %struct.security_mnt_opts* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @seq_puts(%struct.seq_file* %69, i8* %76)
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = call i32 @seq_putc(%struct.seq_file* %81, i8 signext 34)
  br label %83

83:                                               ; preds = %80, %68
  br label %84

84:                                               ; preds = %83, %49
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %8

87:                                               ; preds = %8
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
