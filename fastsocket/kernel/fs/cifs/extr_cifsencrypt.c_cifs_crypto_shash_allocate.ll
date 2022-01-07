; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsencrypt.c_cifs_crypto_shash_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsencrypt.c_cifs_crypto_shash_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"hmac(md5)\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"could not allocate crypto hmacmd5\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not allocate crypto md5\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"cifs_crypto_shash_allocate: can't alloc hmacmd5\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"cifs_crypto_shash_allocate: can't alloc md5\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_crypto_shash_allocate(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  %6 = call i8* @crypto_alloc_shash(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %8 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8* %6, i8** %9, align 8
  %10 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %11 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %19 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @PTR_ERR(i8* %21)
  store i32 %22, i32* %2, align 4
  br label %143

23:                                               ; preds = %1
  %24 = call i8* @crypto_alloc_shash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %25 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %26 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %29 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %37 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %4, align 4
  br label %136

41:                                               ; preds = %23
  %42 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %43 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @crypto_shash_descsize(i8* %45)
  %47 = sext i32 %46 to i64
  %48 = add i64 4, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kmalloc(i32 %50, i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_10__*
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %56, align 8
  %57 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %58 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = icmp ne %struct.TYPE_10__* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %41
  %63 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %130

66:                                               ; preds = %41
  %67 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %68 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %72 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i8* %70, i8** %76, align 8
  %77 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %78 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %84 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @crypto_shash_descsize(i8* %86)
  %88 = sext i32 %87 to i64
  %89 = add i64 4, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @kmalloc(i32 %91, i32 %92)
  %94 = bitcast i8* %93 to %struct.TYPE_8__*
  %95 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %96 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %97, align 8
  %98 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %99 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = icmp ne %struct.TYPE_8__* %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %66
  %104 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %124

107:                                              ; preds = %66
  %108 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %109 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %113 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i8* %111, i8** %117, align 8
  %118 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %119 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  store i32 0, i32* %2, align 4
  br label %143

124:                                              ; preds = %103
  %125 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %126 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = call i32 @kfree(%struct.TYPE_10__* %128)
  br label %130

130:                                              ; preds = %124, %62
  %131 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %132 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @crypto_free_shash(i8* %134)
  br label %136

136:                                              ; preds = %130, %34
  %137 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %138 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @crypto_free_shash(i8* %140)
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %136, %107, %16
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i8* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @crypto_shash_descsize(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_10__*) #1

declare dso_local i32 @crypto_free_shash(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
