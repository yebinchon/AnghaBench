; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"missing pool name argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"missing vdev specification\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"pool '%s' is unavailable\0A\00", align 1
@ZPOOL_COPY_BOOT_LABEL = common dso_local global i32 0, align 4
@ZPOOL_NO_BOOT_LABEL = common dso_local global i32 0, align 4
@ZPOOL_PROP_BOOTSIZE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"would update '%s' to the following configuration:\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"logs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_add(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i64, i64* @B_FALSE, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* @B_FALSE, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %37, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %37 [
    i32 102, label %26
    i32 110, label %28
    i32 63, label %30
  ]

26:                                               ; preds = %24
  %27 = load i64, i64* @B_TRUE, align 8
  store i64 %27, i64* %6, align 8
  br label %37

28:                                               ; preds = %24
  %29 = load i64, i64* @B_TRUE, align 8
  store i64 %29, i64* %7, align 8
  br label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @stderr, align 4
  %32 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @optopt, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* %32, i32 %33)
  %35 = load i64, i64* @B_FALSE, align 8
  %36 = call i32 @usage(i64 %35)
  br label %37

37:                                               ; preds = %30, %24, %28, %26
  br label %19

38:                                               ; preds = %19
  %39 = load i64, i64* @optind, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i64, i64* @optind, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  store i8** %46, i8*** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load i32, i32* @stderr, align 4
  %51 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* %51)
  %53 = load i64, i64* @B_FALSE, align 8
  %54 = call i32 @usage(i64 %53)
  br label %55

55:                                               ; preds = %49, %38
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @stderr, align 4
  %60 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* %60)
  %62 = load i64, i64* @B_FALSE, align 8
  %63 = call i32 @usage(i64 %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %10, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %4, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %5, align 8
  %72 = load i32, i32* @g_zfs, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = call i32* @zpool_open(i32 %72, i8* %73)
  store i32* %74, i32** %14, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %176

77:                                               ; preds = %64
  %78 = load i32*, i32** %14, align 8
  %79 = call i32* @zpool_get_config(i32* %78, i32* null)
  store i32* %79, i32** %15, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32, i32* @stderr, align 4
  %83 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* %83, i8* %84)
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @zpool_close(i32* %86)
  store i32 1, i32* %3, align 4
  br label %176

88:                                               ; preds = %77
  %89 = load i32*, i32** %14, align 8
  %90 = call i64 @zpool_is_bootable(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @ZPOOL_COPY_BOOT_LABEL, align 4
  store i32 %93, i32* %11, align 4
  br label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @ZPOOL_NO_BOOT_LABEL, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* @ZPOOL_PROP_BOOTSIZE, align 4
  %99 = call i32 @zpool_get_prop_int(i32* %97, i32 %98, i32* null)
  store i32 %99, i32* %12, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* @B_FALSE, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load i8**, i8*** %5, align 8
  %112 = call i32* @make_root_vdev(i32* %100, i64 %101, i32 %105, i64 %106, i64 %107, i32 %108, i32 %109, i32 %110, i8** %111)
  store i32* %112, i32** %9, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %96
  %116 = load i32*, i32** %14, align 8
  %117 = call i32 @zpool_close(i32* %116)
  store i32 1, i32* %3, align 4
  br label %176

118:                                              ; preds = %96
  %119 = load i64, i64* %7, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %164

121:                                              ; preds = %118
  %122 = load i32*, i32** %15, align 8
  %123 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %124 = call i64 @nvlist_lookup_nvlist(i32* %122, i32 %123, i32** %16)
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @verify(i32 %126)
  %128 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %129 = load i32*, i32** %14, align 8
  %130 = call i8* @zpool_get_name(i32* %129)
  %131 = call i32 @printf(i8* %128, i8* %130)
  %132 = load i32*, i32** %14, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load i32*, i32** %16, align 8
  %135 = load i64, i64* @B_FALSE, align 8
  %136 = call i32 @print_vdev_tree(i32* %132, i8* %133, i32* %134, i32 0, i64 %135)
  %137 = load i32*, i32** %14, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = load i64, i64* @B_FALSE, align 8
  %140 = call i32 @print_vdev_tree(i32* %137, i8* null, i32* %138, i32 0, i64 %139)
  %141 = load i32*, i32** %16, align 8
  %142 = call i64 @num_logs(i32* %141)
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %121
  %145 = load i32*, i32** %14, align 8
  %146 = load i32*, i32** %16, align 8
  %147 = load i64, i64* @B_TRUE, align 8
  %148 = call i32 @print_vdev_tree(i32* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %146, i32 0, i64 %147)
  %149 = load i32*, i32** %14, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = load i64, i64* @B_TRUE, align 8
  %152 = call i32 @print_vdev_tree(i32* %149, i8* null, i32* %150, i32 0, i64 %151)
  br label %163

153:                                              ; preds = %121
  %154 = load i32*, i32** %9, align 8
  %155 = call i64 @num_logs(i32* %154)
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i32*, i32** %14, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = load i64, i64* @B_TRUE, align 8
  %161 = call i32 @print_vdev_tree(i32* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %159, i32 0, i64 %160)
  br label %162

162:                                              ; preds = %157, %153
  br label %163

163:                                              ; preds = %162, %144
  store i32 0, i32* %13, align 4
  br label %170

164:                                              ; preds = %118
  %165 = load i32*, i32** %14, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = call i64 @zpool_add(i32* %165, i32* %166)
  %168 = icmp ne i64 %167, 0
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %164, %163
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @nvlist_free(i32* %171)
  %173 = load i32*, i32** %14, align 8
  %174 = call i32 @zpool_close(i32* %173)
  %175 = load i32, i32* %13, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %170, %115, %81, %76
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i64) #1

declare dso_local i32* @zpool_open(i32, i8*) #1

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i64 @zpool_is_bootable(i32*) #1

declare dso_local i32 @zpool_get_prop_int(i32*, i32, i32*) #1

declare dso_local i32* @make_root_vdev(i32*, i64, i32, i64, i64, i32, i32, i32, i8**) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

declare dso_local i32 @print_vdev_tree(i32*, i8*, i32*, i32, i64) #1

declare dso_local i64 @num_logs(i32*) #1

declare dso_local i64 @zpool_add(i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
