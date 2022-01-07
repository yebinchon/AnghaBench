; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_attach_or_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_attach_or_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"missing pool name argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"missing <device> specification\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"missing <new_device> specification\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"pool '%s' is unavailable\0A\00", align 1
@ZPOOL_COPY_BOOT_LABEL = common dso_local global i32 0, align 4
@ZPOOL_NO_BOOT_LABEL = common dso_local global i32 0, align 4
@ZPOOL_PROP_BOOTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32)* @zpool_do_attach_or_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpool_do_attach_or_replace(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @B_FALSE, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %35, %3
  %20 = load i32, i32* %5, align 4
  %21 = load i8**, i8*** %6, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %35 [
    i32 102, label %26
    i32 63, label %28
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @B_TRUE, align 4
  store i32 %27, i32* %8, align 4
  br label %35

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @optopt, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* %30, i32 %31)
  %33 = load i32, i32* @B_FALSE, align 4
  %34 = call i32 @usage(i32 %33)
  br label %35

35:                                               ; preds = %28, %24, %26
  br label %19

36:                                               ; preds = %19
  %37 = load i64, i64* @optind, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %6, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load i32, i32* @stderr, align 4
  %49 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* %49)
  %51 = load i32, i32* @B_FALSE, align 4
  %52 = call i32 @usage(i32 %51)
  br label %53

53:                                               ; preds = %47, %36
  %54 = load i8**, i8*** %6, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @stderr, align 4
  %61 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* %61)
  %63 = load i32, i32* @B_FALSE, align 4
  %64 = call i32 @usage(i32 %63)
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i8**, i8*** %6, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %12, align 8
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 3
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @stderr, align 4
  %76 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* %76)
  %78 = load i32, i32* @B_FALSE, align 4
  %79 = call i32 @usage(i32 %78)
  br label %80

80:                                               ; preds = %74, %71
  %81 = load i8*, i8** %12, align 8
  store i8* %81, i8** %13, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  %84 = load i8**, i8*** %6, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  store i8** %85, i8*** %6, align 8
  br label %94

86:                                               ; preds = %65
  %87 = load i8**, i8*** %6, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 2
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %13, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %90, 2
  store i32 %91, i32* %5, align 4
  %92 = load i8**, i8*** %6, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 2
  store i8** %93, i8*** %6, align 8
  br label %94

94:                                               ; preds = %86, %80
  %95 = load i32, i32* %5, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* %99)
  %101 = load i32, i32* @B_FALSE, align 4
  %102 = call i32 @usage(i32 %101)
  br label %103

103:                                              ; preds = %97, %94
  %104 = load i32, i32* @g_zfs, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = call i32* @zpool_open(i32 %104, i8* %105)
  store i32* %106, i32** %14, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 1, i32* %4, align 4
  br label %159

109:                                              ; preds = %103
  %110 = load i32*, i32** %14, align 8
  %111 = call i32* @zpool_get_config(i32* %110, i32* null)
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i32, i32* @stderr, align 4
  %115 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* %115, i8* %116)
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @zpool_close(i32* %118)
  store i32 1, i32* %4, align 4
  br label %159

120:                                              ; preds = %109
  %121 = load i32*, i32** %14, align 8
  %122 = call i64 @zpool_is_bootable(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @ZPOOL_COPY_BOOT_LABEL, align 4
  store i32 %125, i32* %15, align 4
  br label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @ZPOOL_NO_BOOT_LABEL, align 4
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = load i32*, i32** %14, align 8
  %130 = load i32, i32* @ZPOOL_PROP_BOOTSIZE, align 4
  %131 = call i32 @zpool_get_prop_int(i32* %129, i32 %130, i32* null)
  store i32 %131, i32* %16, align 4
  %132 = load i32*, i32** %14, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @B_FALSE, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @B_FALSE, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i8**, i8*** %6, align 8
  %141 = call i32* @make_root_vdev(i32* %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i8** %140)
  store i32* %141, i32** %10, align 8
  %142 = load i32*, i32** %10, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %128
  %145 = load i32*, i32** %14, align 8
  %146 = call i32 @zpool_close(i32* %145)
  store i32 1, i32* %4, align 4
  br label %159

147:                                              ; preds = %128
  %148 = load i32*, i32** %14, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @zpool_vdev_attach(i32* %148, i8* %149, i8* %150, i32* %151, i32 %152)
  store i32 %153, i32* %17, align 4
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @nvlist_free(i32* %154)
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @zpool_close(i32* %156)
  %158 = load i32, i32* %17, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %147, %144, %113, %108
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32* @zpool_open(i32, i8*) #1

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i64 @zpool_is_bootable(i32*) #1

declare dso_local i32 @zpool_get_prop_int(i32*, i32, i32*) #1

declare dso_local i32* @make_root_vdev(i32*, i32, i32, i32, i32, i32, i32, i32, i8**) #1

declare dso_local i32 @zpool_vdev_attach(i32*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
